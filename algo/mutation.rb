# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  word_1 = ""
  word_2 = ""
  boolean = true
  word_1 = base_word.chars
  word_2 = mutation.chars
  if word_1.include?(word_2)
    boolean = true
  else boolean = false
  end
  #mutation.chars.each do |letter|
   # if base_word.include?(letter)
    #  word << letter
    #else
    #end
  #end
  #if base_word.include?(word)
   # boolean = true
  #else
   # boolean = false
  #end
  #boolean
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end