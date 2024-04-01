# frozen_string_literal:true

def formatted_print(a, b, c)
  if a >= b + c
    puts 'NAO FORMA TRIANGULO'
  else
    if a**2 > b**2 + c**2
      puts 'TRIANGULO OBTUSANGULO'
    elsif a**2 < b**2 + c**2
      puts 'TRIANGULO ACUTANGULO'
    else
      puts 'TRIANGULO RETANGULO'
    end
    if a == b && b == c && c == a
      puts 'TRIANGULO EQUILATERO'
    elsif a == b || b == c || c == a
      puts 'TRIANGULO ISOSCELES'
    end
  end
end

sizes = gets.split.map(&:to_f)
a, b, c = sizes.sort.reverse
formatted_print(a, b, c)
