# frozen_string_literal:true

test = 1
while (n = gets&.to_i).nonzero?
  puts "Teste #{test}"
  difference = 0
  n.times do
    j, z = gets.split.map(&:to_i)
    difference += j - z
    puts difference
  end
  puts
  test += 1
end
