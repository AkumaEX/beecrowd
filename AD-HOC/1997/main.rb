# frozen_string_literal:true

def min_moves(s, t)
  moves = 0
  previous_equals = true
  s.length.times do |i|
    now_equals = s[i] == t[i]
    moves += 1 if previous_equals && !now_equals
    previous_equals = now_equals
  end
  moves
end

s, t = gets.split
while s != '*'
  puts min_moves(s, t)
  s, t = gets.split
end
