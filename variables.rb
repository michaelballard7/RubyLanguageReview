=begin

A variable  is  a refernce to an object. The object in a variable can change
Variables are sometimes called pointers
The variable itself is not an object but more like a placeholder that refers to the objects
Ruby is dynamically typed so variables do not have to be declared. The same variable can be reassigned
variables are pointed to an object with an = sign
The right side of  the = is always evaluated first
Variable names should start with a lowercase letter or an underscore
variable names are case sensitive


=end

# variable syntax in ruby follows these conventions:
name =  "michael"
last_name = "ballard"
handsome = true
age = 27+1




# Local Variables
def local
    x = "local variable"
end

# Global variable, not really ruby like to use these
10.times do
    $x = "I am a global variable"
end

# Instance Variable
# An instance variable is a variable that is accessible in any instance method in a particular instance of a class.
@batting_average = 300

# Constant, constant will throw warnings but it will change it
TEAM = "New York Yankees"

# Class Variable
@@x = "This is a class Variable"
