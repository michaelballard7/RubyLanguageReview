system 'clear'

print "Enter a number between 1 and 10 "
num = gets.chomp.to_i

if num > 10
    puts "Hey this number is greater than 10"
elsif num > 5
    puts "#{num} is greater than 5"
elsif num == 5
    puts "number is equal to 5"
else
    puts "#{num } is less than 5"
end   

