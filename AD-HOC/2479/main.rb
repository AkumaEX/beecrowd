# frozen_string_literal:true

well_behaved = 0
names = []
n = gets.to_i
n.times do
  behavior, name = gets.split
  well_behaved += 1 if behavior == '+'
  names.push(name)
end
names.sort!.each do |name|
  puts name
end
puts "Se comportaram: #{well_behaved} | Nao se comportaram: #{n - well_behaved}"
