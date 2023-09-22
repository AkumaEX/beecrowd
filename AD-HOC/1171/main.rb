# frozen_string_literal:true

count = {}
n = gets.to_i
n.times do
  num = gets.to_i
  if count[num]
    count[num] += 1
  else
    count[num] = 1
  end
end
count.keys.sort.each do |num|
  puts "#{num} aparece #{count[num]} vez(es)"
end
