def n_lines(n)
  ((-1 + Math.sqrt(1 + 8 * n)) / 2).to_i
end

t = gets.to_i
t.times do
  n = gets.to_i
  puts n_lines(n)
end
