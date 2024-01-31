# frozen_string_literal:true

def print_results(n, l, q, participants)
  l *= 10
  q *= 10
  last = 0
  while l > q
    l -= q
    last += 1
  end
  format('%<participant>s %<remainder>.1f', participant: participants[last % n.to_i], remainder: l / 10)
end

n, q, l = gets.split.map(&:to_f)
participants = gets.split
puts print_results(n, q, l, participants)
