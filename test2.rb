require 'pp'
require 'enumerator'

class Array
  # special round robin scheduling
  def schedule
    res, scheduled = [], []
    (length-1).times { dup.distribute(scheduled, []) }
    # convert list of games to list of rounds
    scheduled.each_slice(length/2) {|x| res.push x}
    aux = res.inject {|a, b| a+b}
    raise if aux.uniq.length != aux.length
    res
  end
  # pair the teams in self and backburner and add games to scheduled
  def distribute(scheduled, backburner)
    # we are done if list is empty and back burners can be scheduled
    return true if empty? && backburner.empty?
    return backburner.distribute(scheduled, []) if empty?
    # take best team and remember if back burner list offered alternatives
    best, alternatives = shift, !backburner.empty?
    # try each team starting from the last
    while other = pop do
      # add team to the back burner list if best played it already
      if scheduled.include? [best, other]
        backburner.unshift(other)
        next
      end
      # schedule the game
      scheduled.push [best, other]
      # try if rest can be scheduled
      return true if dup.distribute(scheduled, backburner.dup)
      # if not unschedule game and add other to back burner list
      scheduled.pop
      backburner.unshift(other)
    end
    # no possible opponent was found, so try alternatives from back burners list
    return alternatives && backburner.unshift(best).distribute(scheduled, [])
  end
end

pp %w{ A B C D E F G H }.schedule