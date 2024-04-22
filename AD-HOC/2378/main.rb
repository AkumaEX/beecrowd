# frozen_string_literal:true

def exceeded(n, c)
  weight = 0
  n.times do
    s, e = gets.split.map(&:to_i)
    weight += e - s
    return true if weight > c
  end
  false
end

n, c = gets.split.map(&:to_i)
puts exceeded(n, c) ? 'S' : 'N'
