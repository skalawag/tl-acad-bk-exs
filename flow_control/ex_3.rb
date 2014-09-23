# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 50 and 100,
# or above 100.

## Hrm. What do we say about 50? or less than 0?

def identify_range(num)
  if num < 0
    puts "Number is too small."
  elsif 0 <= num && num <= 50
    puts "#{num} is between 0 and 50."
  elsif 50 < num && num <= 100
    puts "#{num} is between 50 and 100."
  else
    puts "#{num} is greater than 100."
  end
end

puts "Enter a number between 0 and 100"
num = gets.chomp.to_i

identify_range(num)
