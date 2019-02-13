class Dog 

    # the initalize method is a form of life cycle method
    # if I want each instance of a class to be created with certain attributes, I must define an #initialize method
    # Initialize requires certain arguments to be passed when instantiating the class to provide initial data
    # The method is what's called a callback method, b/c it is automatically invoked every time the #new method is used
    # I can also think of the initialize method as a constructor method
    def initailize(name)
        @name = name 
    end 

    # A setter method is defined with an =, equals sign, appended to the name of the method
    # each new method creates its own scope gate, without instance variables I can not access data across scopes
    def name=(dog_name)
        @name= dog_name
    end 

    # a classic getter in ruby
    def name 
        @name
    end 

    def bark
        "Woof"
    end 
end 


# instantiate a new ruby object
lassie  = Dog.new

# this is a classic way to interact with getters and setters
lassie.name=("lassie")
puts lassie.name

# this is not a best practice as I am exposing the implementation of my methods to a programmer
lassie.instance_variable_set(:@name, "Yeezy Lassie")
puts "Hello, #{lassie.instance_variable_get(:@name)}"


p lassie.bark