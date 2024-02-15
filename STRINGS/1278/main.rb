# frozen_string_literal:true

def get_lines(n)
  lines = []
  max_size = 0
  n.times do
    line = gets.strip.gsub(/\s+/, ' ')
    lines.push(line)
    line_size = line.size
    max_size = line_size if line_size > max_size
  end
  [lines, max_size]
end

def formatted_print(lines, max_size)
  lines.each do |line|
    puts line.rjust(max_size)
  end
end

n = gets.to_i
while n.positive?
  lines, max_size = get_lines(n)
  formatted_print(lines, max_size)
  if (n = gets.to_i).positive?
    puts
  end
end
