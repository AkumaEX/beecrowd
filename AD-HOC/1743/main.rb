# frozen_string_literal:true

def fits?(x, y)
  5.times do |i|
    return false if x[i] + y[i] != 1
  end
  true
end

x = gets.split.map(&:to_i)
y = gets.split.map(&:to_i)
puts fits?(x, y) ? 'Y' : 'N'
