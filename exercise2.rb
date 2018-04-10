puts "What is your last name?"

name = gets.chomp

puts name.length

if name.length > 10  
	puts "Wow! your last name is  " + "#{name.length}" + " characters long. That is a long name"
elsif
	(name.length >=5 && name.length<=10)
	puts "Your last name is " + "#{name.length}" + " characters long."
elsif
	name.length < 5
	puts "Your last name is " + "#{name.length}" + " characters long. That is a short name."
end