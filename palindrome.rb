# Palindrome Checker
# /r/DailyProgrammer challenge for 9/14/15

print "Enter number of lines: "
num = gets.to_i

puts "Enter a string to be checked to be a palindrome: "
raw_str = []

num.times { raw_str << gets.chomp }

str = raw_str.join.each_char.select { |e| e =~ /[a-zA-Z]/ }.join.downcase

if str == str.reverse
  puts "\nPalindrome"
else
  puts "\nNot a palindrome"
end
