# Given the array...

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# Write a program that prints out groups of words that are
# anagrams. Anagrams are words that have the same exact letters in
# them but in a different order. Your output should look something
# like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

puts "First way:"
words.map { |w|
  words.select { |x|
    x.chars.sort == w.chars.sort }
}.uniq.each { |a| p a }
puts ""

puts "Another way:"
while not words.empty?
  anagrams = words.select { |x| x.chars.sort == words.first.chars.sort }
  words -= anagrams
  p anagrams
end
