# frozen_string_literal:true

def translate(line)
  line = line.gsub(/_(.*?)_/, '<i>\1</i>')
  line.gsub(/\*(.*?)\*/, '<b>\1</b>')
end

while (line = gets)
  puts translate(line)
end
