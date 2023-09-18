# frozen_string_literal:true

require 'set'

a, b = gets.split.map(&:to_i)
while a != 0 && b != 0
  a_set = gets.split.map(&:to_i).to_set
  b_set = gets.split.map(&:to_i).to_set
  union_set = a_set | b_set
  difference = [union_set.size - a_set.size, union_set.size - b_set.size].min
  puts difference
  a, b = gets.split.map(&:to_i)
end
