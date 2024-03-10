# frozen_string_literal:true

def get_move(instruction, lookup)
  return -1 if instruction == 'LEFT'
  return 1 if instruction == 'RIGHT'

  i = instruction.split.last.to_i - 1
  lookup[i]
end

t = gets.to_i
t.times do
  p = 0
  lookup = []
  n = gets.to_i
  n.times do
    instruction = gets.strip
    move = get_move(instruction, lookup)
    p += move
    lookup.push(move)
  end
  puts p
end
