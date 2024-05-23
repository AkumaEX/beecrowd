# frozen_string_literal:true

positive = 0
6.times do
  positive += 1 if gets.to_f.positive?
end
puts "#{positive} valores positivos"
