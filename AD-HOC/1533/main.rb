# frozen_string_literal:true

def most_suspicious(n, suspects)
  second = suspects.sort[n - 2]
  suspects.index(second) + 1
end

while (n = gets.to_i).positive?
  suspects = gets.split.map(&:to_i)
  puts most_suspicious(n, suspects)
end
