a, b, c, d = gets.split.map(&:to_i)
accepted = b > c && d > a && c + d > a + b && c.positive? && d.positive? && a.even?
puts accepted ? "Valores aceitos" : "Valores nao aceitos"
