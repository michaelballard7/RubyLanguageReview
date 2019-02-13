system "clear"

(1..100).each do |num|
    if num  % 5 == 0 && num % 3 == 0 
        puts "#{num} fizzbuzz"
    elsif num % 5 == 0
        puts "#{num} buzz"
    elsif num % 3 == 0
        puts "#{num} fizz"
    else 
        puts "#{num}"
    end 
end