def missing(n, pieces)
  (0..n - 1).each do |i|
    return i + 1 if pieces[i] != i + 1
  end
  n
end

n = gets.to_i
pieces = gets.split.map(&:to_i).sort
puts missing(n, pieces)
