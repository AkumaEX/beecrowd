gasoline = 0
ethanol = 0
diesel = 0

loop do
  fuel = gets.to_i
  if fuel == 1
    ethanol += 1
  elsif fuel == 2
    gasoline += 1
  elsif fuel == 3
    diesel += 1
  elsif fuel == 4
    break
  end
end

puts "MUITO OBRIGADO"
puts "Alcool: #{ethanol}"
puts "Gasolina: #{gasoline}"
puts "Diesel: #{diesel}"
