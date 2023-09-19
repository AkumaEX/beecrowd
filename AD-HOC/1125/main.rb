# frozen_string_literal:true

def get_scores(p, grand_prix, rule)
  scores = [0] * p
  grand_prix.each do |results|
    results.each_with_index do |position, driver|
      scores[driver] += rule[position] if position < rule.length
    end
  end
  scores
end

def get_winner(scores)
  winner = scores.each_index.select { |driver| scores[driver] == scores.max }
  winner.map { |driver| driver + 1 }
end

g, p = gets.split.map(&:to_i)
while g != 0 && p != 0
  grand_prix = []
  g.times do
    grand_prix.append(gets.split.map(&:to_i))
  end

  s = gets.to_i
  s.times do
    rule = gets.split.map(&:to_i)
    scores = get_scores(p, grand_prix, rule)
    winner = get_winner(scores)
    puts winner.join(' ')
  end

  g, p = gets.split.map(&:to_i)
end
