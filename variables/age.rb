# Write a program called age.rb that asks a user how old they are and
# then tells them how old they will be in 10, 20, 30 and 40 years. Below
# is the output for someone 20 years old.

decades = [10, 20, 30, 40]

puts "How old are you today? ".chomp

age = gets.chomp

# for d in decades do
#   next_age = age.to_i + d
#   #next_age = next_age.to_s
#   puts "In #{age} years, you will be #{next_age} years old."
# end

decades.each do |n|
  next_age = age.to_i + n
  puts "In #{age} years, you will be #{next_age} years old."
end
