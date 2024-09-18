require "set"

t = gets.to_i
t.times do
  gets
  puts gets.split.to_set.size
end
