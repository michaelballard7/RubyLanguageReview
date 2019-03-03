=begin

    Everything in ruby is an object
    Each objectsin ruby has methods that is can repsond to
    Each object has exclusive and shared methods depending on its type

    Ruby sees all data structures
    and values—from simple scalar (atomic) values like inte-gers and strings,
    to complex data structures like arrays—as objects.
    Every object is capable of understanding a certain set of messages.

    x = "100".to_i
    The dot means that the message to_i is being sent to the string "100".

    Most of the time, you send a message to a receiving object, and the object executes the corresponding method.

    . The primary difference between them is that puts adds a new line after executing, and print does not.

=end


# to find methods an object can respond to:
p "Hello World".methods

# examples of methods that strings can respond to are:
p "Hello world".length 11


puts makeup_bag = [1,2,"tiffany",34]






p "Hello world".upcase "HELLO WORLD"


# variables are objects that respond to methods
foo = [1,2,3]
p foo.length

# numerics are objects as well so they to respond to methods
p 10.next

p -1.next
