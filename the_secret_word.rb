secret_word = "delta"

puts 'Guess the secret word'

guess = gets.chomp

while guess != secret_word 
	puts "That is not the secret word! Guess Again!"
	guess == gets.chomp
end

puts "You got it"
