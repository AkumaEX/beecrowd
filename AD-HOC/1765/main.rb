# frozen_string_literal:true

while (t = gets.to_i).nonzero?
  t.times do |i|
    q, a, b = gets.split.map(&:to_f)
    puts format('Size #%d:', i + 1)
    puts format('Ice Cream Used: %.2f cm2', q * (a + b) * 2.5)
  end
  puts
end
