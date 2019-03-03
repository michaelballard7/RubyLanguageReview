class Dog 

    # ruby provides macros which are short cuts for defining readers and writers
    # the attribute accessor defines getters and setter for a given symbol
    attr_accessor :hair_color

    # the attribute writer is a write only method
    attr_writer :mood
    
    # the attribute reader is read only methods
    attr_reader :birthday

    # the initalize method is a form of life cycle method, also known as a hook or life cycle event
    # if I want each instance of a class to be created with certain attributes, I must define an #initialize method
    # Initialize requires certain arguments to be passed when instantiating the class to provide initial data
    # The method is what's called a callback method, b/c it is automatically invoked every time the #new method is used
    # I can also think of the initialize method as a constructor method
    def initialize(name, birthday)
        @name = name 
        @birthday = birthday  # this is known as a static property b/c there is no interface to change the method
        @@all = []
        @@all << self 
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

    def self.all
        @@all
    end 

end 


# instantiate a new ruby object
lassie  = Dog.new("lassie","6-6-1966")

# this is a classic way to interact with getters and setters
lassie.name=("lassie")
puts lassie.name

# this is not a best practice as I am exposing the implementation of my methods to a programmer
lassie.instance_variable_set(:@name, "Yeezy Lassie")
puts "Hello, #{lassie.instance_variable_get(:@name)}"

p lassie.bark

lassie.hair_color = "Brown"

p lassie.hair_color

p lassie.birthday

p Dog.all