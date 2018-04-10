

puts "Enter your password:"

pwd =gets.chomp

somefile = File.open("password.txt", "w")

somefile.puts pwd

somefile.close 