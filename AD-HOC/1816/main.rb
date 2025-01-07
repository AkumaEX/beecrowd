h = 1
while (m = gets.to_i).nonzero?
  cypher = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  puts "Instancia #{h}"
  gets.split.map(&:to_i).each do |code|
    print(cypher[code - 1])
    cypher.insert(0, cypher.delete_at(code - 1))
  end
  puts "\n\n"
  h += 1
end
