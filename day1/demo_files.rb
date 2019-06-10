file = File.open("readme.md", "r")
file.each_line do |line|
  puts line
end

file.close

file = File.open("output.txt", "w")
file.write("hello new file\n")
file.close
