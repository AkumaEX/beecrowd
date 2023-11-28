# frozen_string_literal:true

require 'set'

def moves(a)
  edges = Set[]
  a.times do
    edges.add(gets.split.to_set)
  end
  2 * edges.size
end

t = gets.to_i
t.times do
  gets
  _, a = gets.split
  puts moves(a.to_i)
end
