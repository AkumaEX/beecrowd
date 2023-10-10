# frozen_string_literal:true

while (line = gets)
  v, t = line.split.map(&:to_i)
  puts v * 2 * t
end
