def formatted_print(m, n)
  m, n = n, m if m > n
  sequence = (m..n).to_a
  puts "#{sequence.join(" ")} Sum=#{sequence.sum}"
end

m, n = gets.split.map(&:to_i)
while m.positive? && n.positive?
  formatted_print(m, n)
  m, n = gets.split.map(&:to_i)
end
