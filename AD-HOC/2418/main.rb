# frozen_string_literal:true

def score(n)
  n.sort!
  n[1] + n[2] + n[3]
end

n = gets.split.map(&:to_f)
puts format('%.1f', score(n))
