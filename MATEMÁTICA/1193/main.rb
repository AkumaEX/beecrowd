def formatted_print(c, x, y)
  puts "Case #{c}:"
  if y == "bin"
    integer = x.to_i(2)
    puts "#{integer} dec"
    puts "#{integer.to_s(16)} hex"
  elsif y == "hex"
    integer = x.to_i(16)
    puts "#{integer} dec"
    puts "#{integer.to_s(2)} bin"
  else
    integer = x.to_i
    puts "#{integer.to_s(16)} hex"
    puts "#{integer.to_s(2)} bin"
  end
  puts
end

n = gets.to_i
(1..n).each do |c|
  x, y = gets.split
  formatted_print(c, x, y)
end
