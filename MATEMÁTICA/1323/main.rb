# frozen_string_literal:true

def squares(n, lookup)
  lookup[n] = n * n + squares(n - 1, lookup) unless lookup[n]
  lookup[n]
end

lookup = { 1 => 1 }
while (n = gets.to_i).nonzero?
  puts squares(n, lookup)
end
