lucky_number = 7

puts "Give me a number between 1 and 10:"

guess = gets.chomp.to_i

case guess
	when guess < 1 && guess > 10
 		puts "Please enter a number between 1 and 10"
	when guess == lucky_number
 		puts "Wow! You got it!"
 	else
 		puts "Nope. Not it"
	end