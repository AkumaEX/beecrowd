# frozen_string_literal:true

require 'set'

def possible?(word1, word2, word3)
  first = -1
  second = -1
  word3.each_char.with_index do |letter, index|
    if letter == '_'
      first.negative? ? first = index : second = index
    end
  end
  word1[first] == word2[second] || word1[second] == word2[first]
end

c = gets.to_i
c.times do
  word1 = gets
  word2 = gets
  word3 = gets
  puts possible?(word1, word2, word3) ? 'Y' : 'N'
end
