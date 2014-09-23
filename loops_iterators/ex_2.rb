# Write a while loop that takes input from the user, performs an
# action, and only stops when the user types "STOP". Each loop can get
# info from the user.

puts "Tell me a number: "
ans = gets.to_i

while true
  puts "Twice #{ans} is #{2 * ans}!"
  puts "Tell me another number:"
  ans = gets.chomp
  if ans == "STOP"
    break
  else
    ans = ans.to_i
  end
end
