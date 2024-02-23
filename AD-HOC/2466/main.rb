# frozen_string_literal:true

def last_color(colors)
  colors = _next_row(colors) while colors.length > 1
  colors.last
end

def _next_row(colors)
  next_row = []
  (colors.length - 1).times do |i|
    next_row.push(colors[i] == colors[i + 1] ? 1 : -1)
  end
  next_row
end

gets # ignore first line
colors = gets.split.map(&:to_i)
puts last_color(colors).positive? ? 'preta' : 'branca'
