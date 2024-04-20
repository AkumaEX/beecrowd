# frozen_string_literal:true

def fastest(o, b, i)
  return 'Otavio' if o < b && o < i
  return 'Bruno' if b < o && b < i
  return 'Ian' if i < o && i < b

  'Empate'
end

o, b, i = gets.split.map(&:to_f)
puts fastest(o, b, i)
