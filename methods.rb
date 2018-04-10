def str_length(string)
	string.length
end

def reverse(string)
	string.reverse
end

puts "Please enter a word: "

word = gets.chomp

puts "That word is #{str_length(word)} characters long"

puts "That word in reverse is #{reverse(word)} "
