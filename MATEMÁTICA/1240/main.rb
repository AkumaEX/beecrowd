# frozen_string_literal:true

def fits(b, a)
  num_digits_b = b.digits.length
  last_digits_a = a % 10**num_digits_b
  last_digits_a == b
end

n = gets.to_i
n.times do
  a, b = gets.split.map(&:to_i)
  if fits b, a
    puts 'encaixa'
  else
    puts 'nao encaixa'
  end
end
