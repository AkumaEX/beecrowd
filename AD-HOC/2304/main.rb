def total(i, n)
  players = {"D" => i, "E" => i, "F" => i}
  n.times do
    transaction = gets.split
    if transaction[0] == "C"
      players[transaction[1]] -= transaction[2].to_i
    elsif transaction[0] == "V"
      players[transaction[1]] += transaction[2].to_i
    else
      players[transaction[1]] += transaction[3].to_i
      players[transaction[2]] -= transaction[3].to_i
    end
  end
  players.values
end

i, n = gets.split.map(&:to_i)
puts total(i, n).join(" ")
