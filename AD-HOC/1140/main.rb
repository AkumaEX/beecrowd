require "set"

def tautogram(sentence)
  sentence.split.map { |word| word.downcase[0] }.to_set.size == 1
end

sentence = gets.strip
until sentence.include?("*")
  puts tautogram(sentence) ? "Y" : "N"
  sentence = gets.strip
end
