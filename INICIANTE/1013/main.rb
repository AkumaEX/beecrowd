# frozen_string_literal: true

def maior(a, b)
  (a + b + (a - b).abs) / 2
end

a, b, c = gets.split.map(&:to_i)
greatest = maior(maior(a, b), c)
puts format('%d eh o maior', greatest)
