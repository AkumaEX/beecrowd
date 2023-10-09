# frozen_string_literal:true

while (line = gets)
  a, b, c = line.split.map(&:to_i)
  if a != b && b == c
    puts 'A'
  elsif b != a && a == c
    puts 'B'
  elsif c != a && a == b
    puts 'C'
  else
    puts '*'
  end
end
