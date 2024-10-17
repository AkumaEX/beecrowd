def number(word)
  return 3 if word.length > 3
  return 1 if word[0] == "o" && word[1] == "n" || word[0] == "o" && word[2] == "e" || word[1] == "n" && word[2] == "e"
  2
end

n = gets.to_i
n.times do
  puts number(gets.strip)
end
