# frozen_string_literal:true

def largest_side(f)
  f * Math.sin(108 * Math::PI / 180) / Math.sin(63 * Math::PI / 180)
end

while f = gets&.to_f
  puts format('%.10f', largest_side(f))
end
