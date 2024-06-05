# frozen_string_literal:true

def days(n, t)
  t.sort!.reverse!
  n.times { |i| t[i] += i + 2 }
  t.max
end

n = gets.to_i
t = gets.split.map(&:to_i)
puts days(n, t)
