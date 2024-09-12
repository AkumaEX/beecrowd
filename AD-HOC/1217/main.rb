total_price, total_weight = 0.0, 0.0
n = gets.to_i
(1..n).each do |day|
  total_price += gets.to_f
  weight = gets.split.length
  puts "day #{day}: #{weight} kg"
  total_weight += weight
end
puts format("%.2f kg by day", total_weight / n)
puts format("R$ %.2f by day", total_price / n)
