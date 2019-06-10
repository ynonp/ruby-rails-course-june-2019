def read_number_or_retry(prompt = "Please select a number: ")
  puts prompt

  loop do
    return Integer(gets)
  rescue ArgumentError
    puts "Sorry, not a number. Try again..."
  end
end

begin
  n1 = read_number_or_retry
  n2 = read_number_or_retry

  puts "#{n1} / #{n2} = #{n1 / n2}"
end