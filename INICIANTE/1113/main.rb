x, y = gets.split.map(&:to_i)
while x != y
  puts (x > y) ? "Decrescente" : "Crescente"
  x, y = gets.split.map(&:to_i)
end
