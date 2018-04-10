puts "Enter an animal from the following list: cat, dog, pig "

animal = gets.chomp.downcase

if animal == "cat"
	puts "Meow"
elsif animal == "dog"
	puts "Woof"
elsif animal == "pig"
	puts "Oink"
else
	puts "That is not an animal I know"
end