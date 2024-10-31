def max_of(h)
  max_value = h
  while h != 1
    h = h.odd? ? 3 * h + 1 : h / 2
    max_value = h if h > max_value
  end
  max_value
end

while (h = gets.to_i).nonzero?
  puts max_of(h)
end
