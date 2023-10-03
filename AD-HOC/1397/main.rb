# frozen_string_literal:true

while (n = gets.to_i).nonzero?
  score_a = 0
  score_b = 0
  n.times do
    a, b = gets.split.map(&:to_i)
    if a > b
      score_a += 1
    elsif b > a
      score_b += 1
    end
  end
  puts "#{score_a} #{score_b}"
end
