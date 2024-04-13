# frozen_string_literal:true

def quantity(n)
  (n - 3) + (n - 2) * (n - 3) / 2
end

n = gets.to_i
puts quantity(n)
