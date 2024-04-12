# frozen_string_literal:true

def digit_sum_of(m)
  m.chars.map(&:to_i).sum
end

while line = gets
  m = line.split[1]
  digit_sum = digit_sum_of(m)
  puts "#{digit_sum} #{(digit_sum % 3).zero? ? 'sim' : 'nao'}"
end
