a, b = 0, 0
n, t, l = gets.split.map(&:to_i)
(n / 2).times do
  s = gets.to_i
  if (t - s).abs <= l
    a += (t - s).abs
    t = s
  end
  s = gets.to_i
  if (t - s).abs <= l
    b += (t - s).abs
    t = s
  end
end
puts "#{a} #{b}"
