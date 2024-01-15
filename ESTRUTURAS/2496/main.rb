# frozen_string_literal:true

def single_exchange?(m, sequence)
  differences = 0
  (0..m - 1).each do |i|
    next unless sequence[i] != 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'[i]

    differences += 1
    return false if differences > 2
  end
  true
end

n = gets.to_i
n.times do
  m = gets.to_i
  sequence = gets
  puts single_exchange?(m, sequence) ? 'There are the chance.' : "There aren't the chance."
end
