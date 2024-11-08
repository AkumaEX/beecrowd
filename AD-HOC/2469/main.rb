def most_frequent
  frequency = {}
  gets.split.map(&:to_i).each do |grade|
    frequency[grade] = 0 if !frequency.include?(grade)
    frequency[grade] += 1
  end
  frequency.max_by { |grade, frequency| [frequency, grade] }[0]
end

gets
puts most_frequent
