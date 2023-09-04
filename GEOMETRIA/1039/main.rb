# frozen_string_literal: true

def distance(x1, y1, x2, y2)
  Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
end

while (line = gets)
  r1, x1, y1, r2, x2, y2 = line.split.map(&:to_i)
  if distance(x1, y1, x2, y2) + r2 > r1
    puts 'MORTO'
  else
    puts 'RICO'
  end
end
