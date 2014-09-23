# Write a program called name.rb that asks the user to type in their
# name and then prints out a greeting message with their name
# included.

puts "Enter your first name: "
a = gets.chomp

puts "Now, your last name: "
b = gets.chomp

puts "Hello, #{a + " " + b}!"

# Add another section onto name.rb that prints the name of the user 10
# times. You must do this without explicitly writing the puts method 10
# times in a row. Hint: you can use the times method to do something
# repeatedly.

a = a + " "
puts a * 10
