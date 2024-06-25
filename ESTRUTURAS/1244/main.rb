def strings
  gets.split.sort_by { |x| - x.length }
end

n = gets.to_i
n.times do
  puts strings.join(" ")
end
