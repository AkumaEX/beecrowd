# frozen_string_literal:true

def majority_ok?(q, v)
  v.sum < q.to_f / 2
end

q = gets.to_i
v = gets.split.map(&:to_i)
puts majority_ok?(q, v) ? 'Y' : 'N'
