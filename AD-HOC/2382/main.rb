def fits(l, a, p, r)
  (l**2 + a**2 + p**2)**0.5 <= r * 2
end

l, a, p, r = gets.split.map(&:to_i)
puts fits(l, a, p, r) ? "S" : "N"
