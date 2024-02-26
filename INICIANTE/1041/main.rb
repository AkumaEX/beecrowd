# frozen_string_literal:true

def quadrant(x, y)
  if x.zero? || y.zero?
    return 'Origem' if x.zero? && y.zero?

    return x.zero? ? 'Eixo Y' : 'Eixo X'
  end
  return y.positive? ? 'Q1' : 'Q4' if x.positive?

  y.positive? ? 'Q2' : 'Q3'
end

x, y = gets.split.map(&:to_f)
puts quadrant(x, y)
