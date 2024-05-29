# frozen_string_literal:true

v, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
t.times do |i|
  v += a[i]
  if v.negative?
    v = 0
  elsif v > 100
    v = 100
  end
end
puts v
