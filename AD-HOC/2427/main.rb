# frozen_string_literal:true

def total(l)
  2**(2 * Math.log2(l).floor)
end

l = gets.to_i
puts total(l)
