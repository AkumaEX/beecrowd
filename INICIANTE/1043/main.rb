# frozen_string_literal:true

def triangle?(a, b, c)
  a != b + c && b != a + c && c != a + b
end

a, b, c = gets.split.map(&:to_f)
if triangle?(a, b, c)
  puts format('Perimetro = %.1f', a + b + c)
else
  puts format('Area = %.1f', (a + b) * c / 2)
end
