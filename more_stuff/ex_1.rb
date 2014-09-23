# Write a program that checks if the sequence of characters "lab"
# exists in the following strings. If it does exist, print out the
# word.

arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

arr.each do |s|
 puts s if s =~ /lab/
end
