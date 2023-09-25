# frozen_string_literal:true

while (n = gets.to_i) != 0
  results = gets.split.map(&:to_i)
  john = results.sum
  mary = n - john
  puts "Mary won #{mary} times and John won #{john} times"
end
