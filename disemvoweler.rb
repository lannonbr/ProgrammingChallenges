print "String: "
str = gets
letters = str.each_char.select { |e| e =~ /[a-zA-Z]/ }
no_vowels, vowels = letters.partition { |e| e =~ /[aeiou]/ }
puts "vowels: " + vowels.join("")
puts "no vowels: " + no_vowels.join("")
