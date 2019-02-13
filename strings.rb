system 'clear'

# a simple string in Ruby
stringy = "The quick brown dog jumped over the moon"
p stringy

# I can interporlate strings as such
puts "Name an Animal "
animal = gets.chomp
puts "Name a noun "
noun = gets.chomp 
p "The quick black #{animal} jumped over the lazy #{noun}"

# I can manipulate ruby string objects with many methods
p "Astros".upcase
p "Astros".downcase
p "Astros".swapcase
p "Astros".reverse
p "Astros".upcase.reverse

# Ruby string substitution
# replaces the first instance of the supplied find
str = "The quick brown fox jumped over the quick dog"
p str.sub "quick", "slow"

# replaces all instances of the sought variable
p str.gsub "quick", "slow"

# can use the !(bang) char to force the orginal data to mutate, permently changes value
p str.gsub!("quick", "slow")


# I can split and strip strings in ruby as such:
# to strip white space from a string
str = "    The quick brown fox jumped over the quick dog"
p str.strip 

# to split a string into an array
p str.split(//).size                                      # => 
