def quadrant(x, y)
  return "Origem" if x.zero? && y.zero?
  return "Eixo Y" if x.zero?
  return "Eixo X" if y.zero?
  return y.positive? ? "Q1" : "Q4" if x.positive?
  y.positive? ? "Q2" : "Q3"
end

x, y = gets.split.map(&:to_f)
puts quadrant(x, y)
