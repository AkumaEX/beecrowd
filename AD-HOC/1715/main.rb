# frozen_string_literal:true

def scored_all_matches(x)
  x.each do |goals|
    return 0 if goals.zero?
  end
  1
end

players = 0
n = gets.split.first.to_i
n.times do
  x = gets.split.map(&:to_i)
  players += scored_all_matches(x)
end
puts players
