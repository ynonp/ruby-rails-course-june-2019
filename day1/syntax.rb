# Syntax
#
# √. Comments
# √. Variables
# √. Operators
# √. Loops / If
#
# 8. Arrays / Hash
# 5. Functions
# 3. Classes
# 7. Loading external files
#

## Variables

demo = 7
number = 99.4

puts "Who are you?"
name = gets

# Calling methods on strings
name_without_linebreak = name.chomp

# Calling destructive methods
name.chomp!

# String interpolation
puts "Nice to meet you #{name}. Have a nice day"

message = if name.start_with?('a')
            "Welcome master"
          else
            "INTRUDER ALERT"
          end

puts message

# Loops
x = 10
while x > 0
  puts x
  x -= 1
end

# short block syntax
# 10.times { |i| puts i }

10.times do |i|
  puts "#{i} Hello world"
end

['one', 'two', 'three'].each do |count|
  puts "I have #{count} items"
end




