def get_frequencies(p)
  frequencies = {}
  p.each do |question|
    frequencies[question] = frequencies.include?(question) ? frequencies[question] + 1 : 1
  end
  frequencies.values
end

def get_questions(frequencies, k)
  questions = 0
  frequencies.each do |frequency|
    questions += 1 if frequency >= k
  end
  questions
end

n, k = gets.split.map(&:to_i)
while n.nonzero? & k.nonzero?
  p = gets.split.map(&:to_i)
  frequencies = get_frequencies(p)
  puts get_questions(frequencies, k)
  n, k = gets.split.map(&:to_i)
end
