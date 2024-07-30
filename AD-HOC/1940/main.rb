def get_total(j, r, scores)
  total = [0] * j
  scores.each_with_index do |score, i|
    total [i % j] += score
  end
  total
end

def get_winner(total)
  total.each_with_index.max[1] + 1
end

j, r = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)
total = get_total(j, r, scores)
puts get_winner(total)
