# Ruby functions
#
# √. Getting parameters from outside code
# √. Default parameter value
# √. Variadic functions
# √. Return value
# √. Raise exceptions
# √. Getting block
# √. Getting a hash
#

require 'pp'

def demo1(x, y, demo)

end

def demo2(x, y, text = "hello")
  raise ArgumentError.new('ahhh') if x < 10
end

demo2(4, 4)

def longer_than(minlen, *words)
  words.filter {|w| w.length > minlen }
end

def sum_weights(sentence, weights)
  sentence.split.map { |word| weights[word].to_i }.sum
end

# expecting to get: byebyebye
puts longer_than(4, 'one', 'byebyebye', 'two')

puts sum_weights('I can see the the the thing',
                 'I' => 10, 'can' => 20, 'the' => 30)

demo1(10, 20, 'hello')





