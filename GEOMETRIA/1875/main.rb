# frozen_string_literal:true

def get_scores(p)
  points = { 'R' => { 'B' => 1, 'G' => 2 }, 'G' => { 'R' => 1, 'B' => 2 }, 'B' => { 'G' => 1, 'R' => 2 } }
  scores = { 'R' => 0, 'G' => 0, 'B' => 0 }
  p.times do
    m, s = gets.split
    scores[m] += points[m][s]
  end
  scores
end

def get_winner(scores)
  return 'red' if scores['R'] > scores['G'] && scores['R'] > scores['B']

  return 'green' if scores['G'] > scores['R'] && scores['G'] > scores['B']

  return 'blue' if scores['B'] > scores['R'] && scores['B'] > scores['G']

  return 'trempate' if scores['R'] == scores['G'] && scores['R'] == scores['B']

  'empate'
end

c = gets.to_i
c.times do
  p = gets.to_i
  scores = get_scores(p)
  puts get_winner(scores)
end
