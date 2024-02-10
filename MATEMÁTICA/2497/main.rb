# frozen_string_literal:true

experiment = 1
while (n = gets.to_i) > -1
  puts "Experiment #{experiment}: #{n / 2} full cycle(s)"
  experiment += 1
end
