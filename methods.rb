system "clear"

# in ruby functions are called methods as everything is an object
# Ruby doesnt have hoisting like js it runs top down
# it may be good practice to put method definitions at top to avoid invocation errors

def hello(name)
    puts "Hello, There #{name}"
end 

# to invoke methods:
hello("Michael") 


def good_morning(first_name, last_name)
    puts "Good Morning, #{first_name} #{last_name}"   
end   

good_morning("Michael", "Ballard")

# methods in ruby have an implicit return in ruby
def good_night(name)
    "Good Night #{name}"
end 

def good_evening(name)
    x = 20 
    return "Good Evening #{name}" if x == 20
    "Hi I was skipped b/c the return"
end

p good_evening("Michael")

# by saving to a variable I unlock additional methods for that instance
method_output = good_night("Michael")
puts method_output.upcase


# In regards to OOP there are two methods types: Class and Instance

class Invoice

    # this is a class method, can be called on the class decleration
    def self.print_out
        "Print out invoice"
    end 

    # this is an instance method, has to be called on an instance of the class
    def convert_to_pdf
        "Converted to PDF"
    end 
end 

# call a class method on the class declaration
Invoice.print_out


# establish an instance and call the instance method
i = Invoice.new 
i.convert_to_pdf


# Procs in ruby are methods that can be defined and stored inside a variable
# Procs take a code block as there arguements
full_name = Proc.new {|first, last| first + " " + last}

# one way to envoke a proc I pass my args to brackets
p full_name["Michael", "Ballard"]

# the second way to envoke a proc with args
p full_name.call("Michael", "Ballard")

# procs can be run with traditional ruby do blocs
gov_name = Proc.new do |first, last|
    "You first name is #{first}, You last name is #{last}"
end
p gov_name.call("Tiffany", "Dixon")

# Lambdas in Ruby:
first_name = lambda { |first, last| first + " " + last}
p first_name["Michael", "Lambda"]

# this is known as the staby lambda syntax
first_name = ->(first, last){ first + " " + last}
p first_name["Michael", "ArrowLambda"]

# The main difference in procs and lambdas:
# Lambdas count the args exactly, where  procs ignore additional args
# Lambdas will throw an error for additional arguments


# With Ruby programming I can use name args as such
def print_address city:, state:, zip:
    puts city
    puts state
    puts zip
end 
print_address city: "Wilmington", state:"NC", zip:"28451"