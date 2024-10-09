def get_shoes
  shoes = {}
  line = gets.strip.split
  until line.empty?
    size, genre = line.shift, line.shift
    shoes[size] = {"F" => 0, "M" => 0} if !shoes.key?(size)
    shoes[size][genre] += 1
  end
  shoes
end

def formatted_print(c, n, shoes)
  f = shoes.key?(n) ? shoes[n]["F"] : 0
  m = shoes.key?(n) ? shoes[n]["M"] : 0
  puts if c.nonzero?
  puts "Caso #{c + 1}:"
  puts "Pares Iguais: #{f + m}"
  puts "F: #{f}"
  puts "M: #{m}"
end

$stdin.each.with_index do |n, c|
  shoes = get_shoes
  formatted_print(c, n.strip, shoes)
end
