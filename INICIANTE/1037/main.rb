value = gets.to_f
if value < 0 || value > 100
  puts("Fora de intervalo")
elsif value > 75
  puts("Intervalo (75,100]")
elsif value > 50
  puts("Intervalo (50,75]")
elsif value > 25
  puts("Intervalo (25,50]")
else
  puts("Intervalo [0,25]")
end
