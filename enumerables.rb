system "clear"

# Ruby enumerables provide methods for traversal, searching and soring collections
# Ruby enumerables are used to transform and sort collections

=begin

    The Enumerable module provides a set of methods to traverse, search, sort and manipulate collections

    I understand loops, arrays and hashes I should adopt enumerables well

    Top Enumerables include: Each, Each_With_Index, Map, Select, Inject
    
=end 

# Remember, I can use the for in loop to iterate a collection as such:
ark = ['cat', 'dog', 'pig', 'goat']
for i in ark
   puts i
end 

# Remember, In ruby each is the preferred iteration concept in ruby
ark.each do |animal|
    puts animal
end 

# Rememeber a one liner a such
ark.each {|animal| puts animal}


# the select enumerator
(1..10).to_a.select do |x|
    x.even?
end 

# I can write a select statement short hand
(1..10).to_a.select {|x| x.even?}

# I can write even shorter hand select, the ampersand tells ruby Im passing a block
(1..10).to_a.select(&:even?)

# using select with Regex
p %w(a b c d e f g).select {|v| v =~ /[aeiou]/}


# Using map to transform individual values 
arr = ["1","23.0","0","7"].map {|x| x.to_i}
arr2 = ["1","23.0","0","7"].map(&:to_i)
p arr2

# map on strings
arr3 = ("a".."g").to_a.map{|x| x* 2}
p arr3

# use map to turn an array into a hash
p Hash[["1","23.0","0","7"].map{|x| [x,x.to_i] }]

# use map to decompose an array of stings in to a hash with string as key and value as key length
p Hash[%w(A dynamic open source programming language).map {|x| [x,x.length]}]

# create a url safe string from key values of a hash
{"a" => "foo", "b" => "bar"}.map{|a,b| "#{a}=#{b}"}.join('&')

# using inject enumerable to sum or total value
p [3,2,4,5,77,45,45566,567].inject(&:+)

p [3,2,4,5,77,45,45566,567].inject(&:*)
