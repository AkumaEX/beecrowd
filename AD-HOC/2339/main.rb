# frozen_string_literal:true

def enough?(c, p, f)
  c * f <= p
end

c, p, f = gets.split.map(&:to_i)
puts enough?(c, p, f) ? 'S' : 'N'
