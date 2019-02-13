system 'clear'

names = ["Michael", "Tim", "Rueben"]

puts names

# print first element in the array
puts names[0]

# output the length of the array
puts names.length


# I can sort the contents of the array with sort
names.sort

# I can reverse an array with the reverse method
names.reverse

# I can return a boolean if an array contains an element or not with include?
name.include?("Tim")

# arrays in ruby can hold all data types
new_array = ["michael", names[2], 34, names]

# outputting an element from a nested array
new_array[3][1]

# I can add new values to an array with the shovel method
new_array << "TiffanyD"

# I can also add new elements with the push method
new_array.push("Malachi")

# I can add an element to the front of an array with unshift
new_array.unshift("To the front")

# I can remove the last element with pop method, the pop returns the popped element
new_array.pop

# I can remove the first element from the front with the shift method
new_array.shift

p new_array

# I can create a array also a such
%w(The quick brown fox jumped over the lazy dog).size