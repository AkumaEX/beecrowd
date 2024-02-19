# frozen_string_literal:true

def overflow?(p, c, q, n)
  result = c == '+' ? p.to_i + q.to_i : p.to_i * q.to_i
  result > n
end

n = gets.to_i
p, c, q = gets.split
puts overflow?(p, c, q, n) ? 'OVERFLOW' : 'OK'
