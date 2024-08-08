test = 1
while (n = gets.to_i).positive?
  puts "Teste #{test}"
  p1, p2 = gets, gets
  n.times do
    h1, h2 = gets.split.map(&:to_i)
    puts (h1 + h2).even? ? p1 : p2
  end
  puts
  test += 1
end
