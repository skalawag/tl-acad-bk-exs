# Rewrite your program from exercise 3 using a case statement. Wrap each
# statement in a method and make sure they both still work.

puts "Enter a number between 0 and 100:"
n = gets.chomp.to_i

case
when num < 0
  puts "Number is too small."
when num <= 50
  puts "#{num} is between 0 and 50."
when num <= 100
  puts "#{num} is between 50 and 100."
else
  puts "#{num} is greater than 100."
end

def identify_range(num)
  case
  when num < 0
    puts "Number is too small."
  when num <= 50
    puts "#{num} is between 0 and 50."
  when num <= 100
    puts "#{num} is between 50 and 100."
  else
    puts "#{num} is greater than 100."
  end
end

identify_range(n)
