# clear the system 
system "clear"

# puts everything on new line
puts "Hello World"                           

# print outputs everything on one line
print "My name is michael"

# strings are objects so I can call methods with them
puts "Nerding out".downcase

puts "helloworld".length

puts "StingMethods?".methods

# proper ruby variables
first_name = "Michael"
last_name = "Ballard"

# proper ruby constants
MIDDLE_NAME = "Anthony"

# use gets to get user input in ruby
print "What is your name?"
name = gets.chomp
puts "Hello #{name}, how are you"

# ruby uses integer and floats for math
puts "+ - * / ** % are the Ruby math operators"

# if I use integers ruby will return integers
puts 10/3

# if I use floats ruby will return floats
puts 10.0/3

# floats less than one must use a zero in front
puts 10 * 0.5

# convert types with methods
print "Enter a number"
number = gets.to_i
puts "#{number} + 10"


# comparison operators include == , !=, >, <, >= <= 
puts 2 == 2
puts 2 != 2
puts 2 > 3
puts 3 < 10
puts 1 >= 2
puts 1<= 2

