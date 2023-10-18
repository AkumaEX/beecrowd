# frozen_string_literal:true

def winner(x, y)
  rafael = (3 * x)**2 + y**2
  beto = 2 * x**2 + (5 * y)**2
  carlos = -100 * x + y**3

  return 'Rafael' if rafael > beto && rafael > carlos
  return 'Beto' if beto > rafael && beto > carlos

  'Carlos'
end

n = gets.to_i
n.times do
  x, y = gets.split.map(&:to_i)
  puts "#{winner(x, y)} ganhou"
end
