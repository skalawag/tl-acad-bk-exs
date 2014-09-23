# Look at Ruby's merge method. Notice that it has two versions. What
# is the difference between merge and merge!? Write a program that
# uses both and illustrate the differences.

arr1 = {cat: "richard", dog: "barney"}
arr2 = {fish: "fred", bird: "oliver"}

puts "arr1 before merge: #{arr1}"
p arr1.merge(arr2)
puts "arr1 after merge: #{arr1}"

puts "arr1 before merge!: #{arr1}"
p arr1.merge!(arr2)
puts "arr1 after merge!: #{arr1}"
