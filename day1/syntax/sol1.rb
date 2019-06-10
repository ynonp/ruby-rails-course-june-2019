def ex1
  puts "How old are you? in years"
  age = gets

# Notice: age is now a STRING.
  puts "You are #{age.to_i * 12} months old"
end

def ex2
  puts "How old are you in months?"
  age_in_months = gets

  puts "You are #{age_in_months.to_i / 12.0} years old"
end

def ex3
  puts "Pick a number"
  num = gets.to_i
  if num % 7 == 0
    puts "Boom!"
  end
end

def ex4
  puts "Pick a number"
  num = gets
  if num.to_i % 7 == 0 || num.include?('7')
    puts "Boom!"
  end
end

def ex5
  puts "Pick three number"
  x = gets.to_i
  y = gets.to_i
  z = gets.to_i
  puts "---"

  puts [x, y, z].max
end

ex5
