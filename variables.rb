
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