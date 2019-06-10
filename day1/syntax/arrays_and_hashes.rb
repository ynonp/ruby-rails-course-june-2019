# Ruby Data Structures
#
require 'pp'
arr = [10, 20, 30, 'one', 'two', [1, 2], true]

puts arr[0]
puts arr[1]

arr[0] = 55
pp arr

# results = []
# 3.times do
#   results.push(gets.to_i)
# end

# pp results

# Hashes
#  key     => value
h = {
   'one'   => 1,
   'two'   => 2,
   'three' => 3,
}

text = 'this is a text with some words and it has many words'
words = {}
words.default = 0
text.split.each do |word|
  words[word] += 1
end

pp words






