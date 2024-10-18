def decypher(word)
  length = word.length
  middle = length / 2
  result = []
  chars = word.chars
  (0...length).each do |i|
    result[length - 1 - i] = chars[(middle + i) % length]
  end
  result.join
end

n = gets.to_i
n.times do
  word = gets.delete("\n")
  puts decypher(word)
end
