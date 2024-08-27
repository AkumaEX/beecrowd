def formatted_print(x, y)
  if x.positive?
    puts y.positive? ? "primeiro" : "quarto"
  else
    puts y.positive? ? "segundo" : "terceiro"
  end
end

x, y = gets.split.map(&:to_i)
while x.nonzero? && y.nonzero?
  formatted_print(x, y)
  x, y = gets.split.map(&:to_i)
end
