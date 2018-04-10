
def print_menu

	puts "Welcome to my Tournament Generator. Enter a selection: "
	puts "1. Enter team"
	puts "2. List teams"
  puts "3. List matchups"
  puts "E: Exit program"
	@choice = gets.chomp.upcase
end 

def add_a_team
	puts "Enter the team's name: "
  	name = gets.chomp
  	puts "Enter the team's rank: "
  	rank = gets.chomp.to_i

 	team = Team.new(team,rank)

 	 @team.push(team)

  puts "******* Team added *******" #adds a team

end

def list_teams #lists teams
  puts "The teams in the system are: "
  @team.each_with_index do |team, index|
    puts "#{index+1}. Name: #{team.name} :: Rank: #{team.rank}" 
  end
end
while @choice != "E" do 
  
  if @choice == "1"
    add_a_team
      print_menu
  elsif @choice == "2"
    list_teams
    print_menu
  elsif @choice == "3"
      list_matchup
      print_menu    
  else
    puts "Please select from the menu"
    print_menu  
  end
end
  
puts "Bye!"