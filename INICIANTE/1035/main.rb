# frozen_string_literal:true

def valid?(a, b, c, d)
  return true if b > c && d > a && c + d > a + b && c.positive? && d.positive? && a.even?

  false
end

a, b, c, d = gets.split.map(&:to_i)
puts valid?(a, b, c, d) ? 'Valores aceitos' : 'Valores nao aceitos'
