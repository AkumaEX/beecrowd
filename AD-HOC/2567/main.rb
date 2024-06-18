# frozen_string_literal:true

def max_lethality(n, a)
  a.sort!
  lethality = 0
  (0...n / 2).each do |i|
    lethality += a[n - 1 - i] - a[i]
  end
  lethality
end

while (n = gets&.to_i)
  a = gets.split.map(&:to_i)
  puts max_lethality(n, a)
end
