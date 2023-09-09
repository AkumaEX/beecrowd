# frozen_string_literal: true

while (line = gets)
  line = line.downcase
  caps = true
  line.each_char.with_index do |character, i|
    next if character == ' '

    line[i] = character.upcase if caps
    caps = !caps
  end
  puts line
end
