def get_shoes(n)
  shoes = {"F" => 0, "M" => 0}
  line = gets.strip.split
  (0...line.length).step(2).each do |i|
    size, genre = line[i].to_i, line[i + 1]
    shoes[genre] += 1 if size == n
  end
  shoes
end

def formatted_print(c, shoes)
  puts if c > 1
  puts "Caso #{c}:"
  puts "Pares Iguais: #{shoes["F"] + shoes["M"]}"
  puts "F: #{shoes["F"]}"
  puts "M: #{shoes["M"]}"
end

$stdin.each.with_index(1) do |n, c|
  formatted_print(c, get_shoes(n.to_i))
end
