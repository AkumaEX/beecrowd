# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
while a.nonzero? || b.nonzero?
  c = 2 * a - b
  puts c
  a, b = gets.split.map(&:to_i)
end
