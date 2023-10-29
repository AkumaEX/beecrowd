# frozen_string_literal:true

def k_factorial(n, i, k)
  return 1 if n <= i * k

  (n - i * k) * k_factorial(n, i + 1, k)
end

t = gets.to_i
t.times do
  number, exclamations = /(\d+)(!+)/.match(gets)[1, 2]
  n = number.to_i
  k = exclamations.length
  puts k_factorial(n, 0, k)
end
