# frozen_string_literal:true

even = 0
5.times do
  even += 1 if (gets.to_i % 2).zero?
end
puts "#{even} valores pares"
