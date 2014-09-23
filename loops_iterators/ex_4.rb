# Write a method that counts down to zero using recursion.

def zero(n)
  if n == 0
    puts n
  else
    puts n
    dec(n - 1)
  end
end

zero(20)
