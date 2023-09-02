# frozen_string_literal: true

def fibonacci(num, lookup)
  return num if num < 2

  lookup[num] = fibonacci(num - 1, lookup) + fibonacci(num - 2, lookup) unless lookup[num]
  lookup[num]
end

lookup = {}
N = gets.to_i
N.times do
  n = gets.to_i
  result = fibonacci(n, lookup)
  num_calls = 2 * fibonacci(n + 1, lookup) - 2
  puts "fib(#{n}) = #{num_calls} calls = #{result}"
end
