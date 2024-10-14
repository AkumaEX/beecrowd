def least_swaps(l, carriages)
  swaps = 0
  (0...l - 1).each do |i|
    (i + 1...l).each do |j|
      swaps += 1 if carriages[i] > carriages[j]
    end
  end
  swaps
end

n = gets.to_i
n.times do
  l = gets.to_i
  carriages = gets.split.map(&:to_i)
  puts "Optimal train swapping takes #{least_swaps(l, carriages)} swaps."
end
