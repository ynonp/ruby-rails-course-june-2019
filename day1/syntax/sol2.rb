require 'pp'

def print_anagrams(filename)
  words = {}
  words.default = []

  fin = File.open(filename, 'r')
  fin.each_line do |line|
    line.chomp!
    key = line.chars.sort.join
    words[key] += [line]
  end

  puts words.values.each { |val| puts val.join(", ") }
end

def aoc2018_1(filename)
  fin = File.open(filename, 'r')
  numbers = fin.each_line.map(&:to_i)
  pp numbers.sum

  freq = 0
  seen = {}

  numbers.cycle.each do |i|
    freq += i
    if seen.key?(freq)
      puts "Found it! #{freq}"
      break
    end

    seen[freq] = true
  end
end

aoc2018_1('input.txt')

