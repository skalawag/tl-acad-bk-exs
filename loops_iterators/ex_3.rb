# Use the each_with_index method to iterate through an array of your
# creation that prints each index and value of the array.

arr = [1,2,3,4,5,6,7,8]

arr.each_with_index do |obj, i|
  puts "#{obj} is at index #{i}"
end
