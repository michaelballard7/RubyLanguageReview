system 'clear'

# ruby loops are very versatile and interchangeable
# there are specific use cases where you may prefer one over another

# the while loop
num = 0
while num < 10
    num += 1 
    puts num 
end 


# the each loop
each loops allow me to iterate over a range
(1..5).each do |var|
    puts var
end 

# each loops allow me to iterate over objects
names = ["Michae", "Tiffany","Hardy", "Matt"]
names.each  do |name|
    puts name
end  

# I can run a one line each loop as such 
names.each {|name| p  name}


# Ruby has for in loops but they are seldomly used
for i in 0..42 
    p i 
end 

# Ruby Nested Iterators
teams = {
    "Houston Astros" => {
        "first base" => "Chris Carter",
        "second base" => "Jose Altuve",
        "shortstop" => "Carlos Correa"
    },
    "Texas Rangers" => {
        "first base" => "Prince Fielder",
        "second base" => "R. Odor",
        "shortstop" => "Elvis Andrus"
    }
}

# when iteration over dictionaries I must account for key and value vs one item in a regular each loop
# first level of iteration, two variables because the key has a value
# assign iterator variables based keys and collections
teams.each do |team, players|
    puts team
    # now iterate over the values for their key:value pairs
    players.each do |position, player|
        puts "#{player} starts at #{position}"
    end 
end 

