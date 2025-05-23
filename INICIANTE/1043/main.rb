a, b, c = gets.split.map(&:to_f)
is_triangle = a + b > c && a + c > b && b + c > a
if is_triangle
  puts "Perimetro = %.1f" % (a + b + c)
else
  puts "Area = %.1f" % ((a + b) * c / 2)
end
