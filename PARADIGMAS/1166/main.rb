# frozen_string_literal:true

def get_max_balls(num_pegs, lookup)
  return lookup[num_pegs].max if lookup.key? num_pegs

  current_state, current_ball = _load_last_state(lookup)
  while current_state.length <= num_pegs
    current_ball += 1
    unless _update_current_state(current_ball, current_state)
      _save_current_state(current_state, lookup)
      current_state.push(current_ball)
    end
  end
  current_ball - 1
end

def _update_current_state(current_ball, current_state)
  current_state.each_with_index do |last_ball, peg|
    square_number = ((last_ball + current_ball)**0.5 % 1).zero?
    if square_number
      current_state[peg] = current_ball
      return true
    end
  end
  false
end

def _load_last_state(lookup)
  last_state = lookup.any? ? lookup[lookup.keys.max] : []
  last_ball = last_state.any? ? last_state.max : 0
  [last_state, last_ball]
end

def _save_current_state(current_state, lookup)
  lookup[current_state.length] = current_state.dup
end

lookup = {}
t = gets.to_i
t.times do
  num_pegs = gets.to_i
  puts get_max_balls(num_pegs, lookup)
end
