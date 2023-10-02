# frozen_string_literal:true

l, r = gets.split.map(&:to_i)
while l.nonzero? || r.nonzero?
  puts l + r
  l, r = gets.split.map(&:to_i)
end
