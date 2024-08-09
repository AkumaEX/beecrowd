test = 1
while (r = gets.to_i).positive?
  puts "Teste #{test}"
  total_a, total_b = 0, 0
  r.times do
    a, b = gets.split.map(&:to_i)
    total_a += a
    total_b += b
  end
  puts (total_a > total_b) ? "Aldo\n\n" : "Beto\n\n"
  test += 1
end
