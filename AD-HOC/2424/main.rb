# frozen_string_literal:true

def ball_in?(x, y)
  x >= 0 && x <= 432 && y >= 0 && y <= 468
end

x, y = gets.split.map(&:to_i)
puts ball_in?(x, y) ? 'dentro' : 'fora'
