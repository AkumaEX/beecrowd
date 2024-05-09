# frozen_string_literal:true

def score(n, v)
  longest = 0
  sequence = 1
  n.times do |i|
    if v[i] == v[i + 1]
      sequence += 1
      longest = sequence if sequence > longest
    else
      sequence = 1
    end
  end
  longest
end

n = gets.to_i
v = gets.split.map(&:to_i)
puts score(n, v)
