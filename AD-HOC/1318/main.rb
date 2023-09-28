# frozen_string_literal:true

n, m = gets.split.map(&:to_i)
while n.nonzero? || m.nonzero?
  tickets = gets.split.map(&:to_i)
  clones = {}
  tickets.each do |ticket|
    clones[ticket] = clones.key?(ticket) ? 1 : 0
  end
  puts clones.values.sum
  n, m = gets.split.map(&:to_i)
end
