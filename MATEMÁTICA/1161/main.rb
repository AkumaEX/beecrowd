# frozen_string_literal: true

def factorial(n, lookup)
  return 1 if n < 2

  lookup[n] = n * factorial(n - 1, lookup) unless lookup[n]
  lookup[n]
end

lookup = {}
while (line = gets)
  m, n = line.split.map(&:to_i)
  puts factorial(m, lookup) + factorial(n, lookup)
end
