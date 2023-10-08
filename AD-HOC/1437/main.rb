# frozen_string_literal:true

directions = %w[N L S O]
while gets.to_i.nonzero?
  direction = 0
  gets.strip.each_char do |command|
    command == 'D' ? direction += 1 : direction -= 1
  end
  puts directions[direction % 4]
end
