def maior(a, b)
  (a + b + (a - b).abs) / 2
end

a, b, c = gets.split.map(&:to_i)
puts "#{maior(maior(a, b), c)} eh o maior"
