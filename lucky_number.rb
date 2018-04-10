random_number = rand(1..10)
count = 0

while random_number != 7
	random_number = rand(1..10)
	count += 1
	puts random_number
end

puts "It took #{count} times to get to 7"
