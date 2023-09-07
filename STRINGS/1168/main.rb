# frozen_string_literal: true

num_leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
n = gets.to_i
n.times do
  total = 0
  num = gets.strip
  num.each_char do |digit|
    total += num_leds[digit.to_i]
  end
  puts "#{total} leds"
end
