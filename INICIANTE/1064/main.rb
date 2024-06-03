# frozen_string_literal:true

def formatted_print(positives, values)
  puts "#{positives} valores positivos"
  puts format('%.1f', values / positives)
end

positives = 0
values = 0
6.times do
  if (value = gets.to_f).positive?
    positives += 1
    values += value
  end
end
formatted_print(positives, values)
