
class Square

    def initialize(side_length)
        @side_length = side_length
    end 

    def side_length
          @side_length
    end 

    def side_length=(length)
        @side_length = length
    end 

    def perimeter 
        @side_length * 4
    end 

    def area 
        @side_length ** 2
    end

    def to_s
        return "Side Length: #{@side_length}
Perimeter: #{perimeter}
Area:3#{area}"
    end

end 


my_square = Square.new(4)

my_square.side_length    # => 4


my_square.side_length = 10   # => 10

my_square.perimeter                               # => 40

my_square.area                                    # => 100

puts my_square.to_s                                    # => nil


class Rectangle 

Adders are short cut methods that allow me to set getters and setters short hand
attr_reader will create a getter to read some attribute
attr_writer will create a setter to write some attribute
attr_accessor will create a getter and setter to write both readers and writers
 

    attr_accessor :side_length

    def initialize(side_length)
        @side_length = side_length
    end 


    def perimeter 
        @side_length * 4
    end 

    def area 
        @side_length ** 2
    end

    def to_s
        return "Side Length: #{@side_length}
        Perimeter: #{perimeter}
        Area:3#{area}"
    end
    
end


my_rect = Rectangle.new(4)

my_rect.side_length                               # => 4
# >> Side Length: 10
# >> Perimeter: 40
# >> Area:3100



