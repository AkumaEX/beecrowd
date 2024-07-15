require "set"

q = gets.split.first.to_i
s = gets.split.map(&:to_i).to_set
q.times do
  office = gets.to_i
  if s.include?(office)
    puts 0
  else
    puts 1
    s.add(office)
  end
end
