def most_frequent(n)
  frequency = {}
  n.each_char do |digit|
    frequency[digit] = 0 if !frequency.include?(digit)
    frequency[digit] += 1
  end
  frequency.max_by { |grade, frequency| [frequency, grade] }[0]
end

while (n = gets)
  puts most_frequent(n)
end
