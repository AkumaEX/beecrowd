# frozen_string_literal:true

def fits(b, a)
  /#{b}$/.match? a
end

n = gets.to_i
n.times do
  a, b = gets.strip.split
  puts fits(b, a) ? 'encaixa' : 'nao encaixa'
end
