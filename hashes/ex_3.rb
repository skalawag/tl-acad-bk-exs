# Using some of Ruby's built-in Hash methods, write a program that
# loops through a hash and prints all of the keys. Then write a
# program that does the same thing except printing the
# values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

# iterate and print keys
puts "Keys:"
family.each_key { |k| p k }

puts ""

puts "Values:"
# iterate and print values
family.each_value { |v| p v }

puts ""
puts "Both keys and values:"
family.each { |k,v| puts "Key: #{k}, value: #{v}" }
