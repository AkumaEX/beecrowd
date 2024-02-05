# frozen_string_literal:true

p, r = gets.split.map(&:to_i)
if p.zero?
  puts 'C'
elsif r.zero?
  puts 'B'
else
  puts 'A'
end
