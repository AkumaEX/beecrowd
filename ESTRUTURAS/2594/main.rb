# frozen_string_literal:true

def results(text, word)
  indexes = text.enum_for(:scan, /\b#{word}\b/).map { Regexp.last_match.begin(0) }

  indexes.empty? ? -1 : indexes.join(' ')
end

q = gets.to_i
q.times do
  text = gets.strip
  word = gets.strip
  puts results(text, word)
end
