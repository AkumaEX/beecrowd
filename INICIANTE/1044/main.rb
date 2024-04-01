# frozen_string_literal:true

def multiple?(a, b)
  (a % b).zero? || (b % a).zero?
end

a, b = gets.split.map(&:to_i)
puts multiple?(a, b) ? 'Sao Multiplos' : 'Nao sao Multiplos'
