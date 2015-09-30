str = File.read "numbers.csv"
lines = str.split "\n"
require 'pry'
binding.pry
# 1
first_line = lines.first
stringified_numbers = first_line.split ","

counter = 0
stringified_numbers.each do |number|
  counter = counter + number.to_i
end

# lines.first.split(",").map { |n| n.to_i }.reduce :+

puts "Sum of first row is #{counter}"

# 2

sum = 0
counter = 0

lines.each do |line|
  numbers = line.split ","
  numbers.each do |number|
    sum = sum + number.to_i
    counter = counter + 1
  end
end

# lines.map { |l| l.split(",") }.flatten.map { |n| n.to_f }.reduce :+

puts "Sum of all lines is #{sum}"
puts "There are #{counter} many numbers"
