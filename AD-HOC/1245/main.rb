def get_pairs(n)
  pairs = {}
  n.times do
    m, l = gets.split
    pairs[m] = {"E" => 0, "D" => 0} unless pairs.include?(m)
    pairs[m][l] += 1
  end
  pairs
end

def get_total(pairs)
  total = 0
  pairs.each_value do |pair|
    total += [pair["E"], pair["D"]].min
  end
  total
end

while (n = gets&.to_i)
  pairs = get_pairs(n)
  puts get_total(pairs)
end
