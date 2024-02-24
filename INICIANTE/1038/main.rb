# frozen_string_literal:true

def total(code, qty)
  prices = [4.0, 4.5, 5.0, 2.0, 1.5]
  prices[code - 1] * qty
end

code, qty = gets.split.map(&:to_i)
puts format('Total: R$ %.2f', total(code, qty))
