gets
s = gets.split.map(&:to_i)
puts s.reduce(0) { |max, student| max + student - student % 3 }
