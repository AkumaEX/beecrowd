# frozen_string_literal:true

n = gets.to_i
while n.nonzero?
  tries = 0
  while (line = gets.split).length > 1
    tries += 1
  end
  puts tries
  n = line.first.to_i
end
