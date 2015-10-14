def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

puts fib(10)
print "Enter a number you want to get:"
num = gets.to_i

i = 0
mult = 1

loop do
  ans = mult * fib(i)
  if ans == num
    break
  elsif ans > num
    i = 0
    mult += 1
  else
    i += 1
  end
end

puts "Multiplier: #{mult}"
puts "Index: #{i}"
print "Sequence: "
(i+1).times do |c|
  print "#{mult * fib(c)} "
end
