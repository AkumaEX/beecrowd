def decode(code, pos)
  code.chars.map { |char| decrypt(char, pos) }.join("")
end

def decrypt(char, pos)
  (((char.ord - 65 - pos) % 26) + 65).chr
end

n = gets.to_i
n.times do
  code = gets.strip
  pos = gets.to_i
  puts decode(code, pos)
end
