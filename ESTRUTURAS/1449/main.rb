# frozen_string_literal:true

def get_dictionary(m)
  dictionary = {}
  m.times do
    japanese = gets.strip
    portuguese = gets.strip
    dictionary[japanese] = portuguese
  end
  dictionary
end

def translate_lines(n, dictionary)
  n.times do
    words = gets.strip.split
    words.each_with_index do |japanese, i|
      words[i] = dictionary[japanese] if dictionary.key?(japanese)
    end
    puts words.join(' ')
  end
end

t = gets.to_i
t.times do
  m, n = gets.split.map(&:to_i)
  dictionary = get_dictionary(m)
  translate_lines(n, dictionary)
  puts
end
