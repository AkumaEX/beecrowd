def formatted_print(dollars, cents)
  dollars = dollars.reverse.scan(/\d{1,3}/).join(",").reverse
  puts "$#{dollars}.#{"%02d" % cents}"
end

while (dollars = gets)
  cents = gets.to_i
  formatted_print(dollars, cents)
end
