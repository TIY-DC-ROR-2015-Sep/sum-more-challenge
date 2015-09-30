require 'csv'

new_arr = []

CSV.foreach("numbers.csv", headers: true) do |row|
  puts row.to_a
  new_arr << row
end

new_arr.map(&:to_i).reduce(:+)