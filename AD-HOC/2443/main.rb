# frozen_string_literal:true

def print_quotient(a, b, c, d)
  numerator = a * d + b * c
  denominator = b * d
  gcd = numerator.gcd(denominator)
  puts "#{numerator / gcd} #{denominator / gcd}"
end

a, b, c, d = gets.split.map(&:to_i)
print_quotient(a, b, c, d)
