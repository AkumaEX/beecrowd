a, n = gets.to_i, gets.to_i
quantity = 0
n.times do
  f = gets.to_i
  quantity += 1 if a * f >= 40000000
end
puts quantity
