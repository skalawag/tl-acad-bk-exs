# Write a method that takes a string as argument. The method should
# return the capitalized version of the string, only if the string is
# longer than 10 characters. (Hint: Ruby's String class has a few
# methods that would be helpful.

## NB: the problem description is ambiguous. It doesn't say whether or
## not to return anything when the string is 10 or few chars. (The
## solution in the book assumes you should return the string original
## string unchanged.)

def upcase_if_gt_10(str)
  if str.length > 10
    puts "hello".upcase
  end
end

puts upcase_if_gt_10("Hello")
puts upcase_if_gt_10("Hello to all my friends.")
