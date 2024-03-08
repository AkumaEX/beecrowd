# frozen_string_literal:true

def winner(s, values)
  closest = values.min_by { |value| (s - value).abs }
  values.index(closest) + 1
end

n = gets.to_i
n.times do
  s = gets.split[1].to_i
  values = gets.split.map(&:to_i)
  puts winner(s, values)
end
