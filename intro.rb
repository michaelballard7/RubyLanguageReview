=begin
    Ruby sees all data structures 
    and values—from simple scalar (atomic) values like inte-gers and strings, 
    to complex data structures like arrays—as objects. 
    Every object is capable of understanding a certain set of messages. 

    x = "100".to_i
    The dot means that the message to_i is being sent to the string "100". 

    Most of the time, you send a message to a receiving object, and the object executes the corresponding method.

    . The primary difference between them is that puts adds a new line after executing, and print does not.

=end



celsius = 100
fahrenheit = (celsius * 9/5) + 32                 # => 212
puts "The result is: "
puts fahrenheit
puts "."

print "Hello. Please enter a Celsius value:"
celsius2 = gets
fahrenheight = (celsius2.to_i * 9/5) + 32          # => 32
print "The Farenheight equivalent is "
print fahrenheight
puts "."


puts "hello michael, welcome home"

# >> The result is: 
# >> 212
# >> .
# >> Hello. Please enter a Celsius value:The Farenheight equivalent is 32.hello michael, welcome home