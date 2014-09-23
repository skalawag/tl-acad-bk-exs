# -*- coding: utf-8 -*-
# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7,
#    8, 9, 10], and print out each value.

Array(1..10).each { |n| p n }

# 2. Same as above, but only print out values greater than 5.

Array(1..10).each { |n| p n if n > 5 }

# 3. Now, using the same array from #2, use the select method to
#    extract all odd numbers into a new array.

p Array(1..10).select { |n| n if n.odd?}

# 4. Append "11" to the end of the original array. Prepend "0" to the
#    beginning.

p Array(1..10).push(11).unshift(0)

# 5. Get rid of "11". And append a "3".

arr = Array(1..10).push(11).unshift(0)
arr.pop
p arr.push(3)

# 6. Get rid of duplicates without specifically removing any one value.
p arr.uniq

# 8. Create a Hash using both Ruby syntax styles.
h1 = {:hello => "world"}
h2 = {hello: "world"}

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#    1. Get the value of key `:b`.
#    2. Add to this hash the key:value pair `{e:5}`
#    3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

h[:b]
h[:e] = 5
h.select { |k,v| k if v < 3.5 }

# 12. Given the following data structures. Write a program that moves
#     the information from the array into the empty hash that applies to
#     the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data.first[1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

# 13. Using the hash you created from the previous exercise,
#     demonstrate how you would access Joe's email and Sally's phone
#     number?

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 14. Create the data structure that you created in the previous
#     example for Joe Smith using loops instead of assignment. Some
#     helpful methods might be the Array shift and first method.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
keys = [:email, :address, :phone]

contacts["Joe Smith"] = keys.zip(contact_data).to_h
p contacts

# 15. Use Ruby's Array method delete_if and String method start_with?
#     to delete all of the words that begin with an "s" in the following
#     array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr.delete_if { |w| w.start_with?('s') }
p arr.delete_if { |w| w.start_with?('s') }.delete_if { |w| w.start_with?('w') }
# better: arr.delete_if { |w| w.start_with?('s', 'w') }

# 16. Take the following array:

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one
# word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look
# into using Array's map and flatten methods, as well as String's
# split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a.map { |phrase| phrase.split }.flatten
