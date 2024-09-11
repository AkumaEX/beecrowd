distance, friends = 0, 0
while gets
  distance += gets.to_f
  friends += 1
end
puts format("%.1f", distance / friends)
