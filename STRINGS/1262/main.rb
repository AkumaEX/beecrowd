# frozen_string_literal:true

def min_cycles(sequence, p)
  sequence.scan(/R{1,#{p}}|W{1}/).length
end

while sequence = gets
  p = gets.to_i
  puts min_cycles(sequence, p)
end
