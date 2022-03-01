def lis(a, b)
  return 1 if !a.empty? && b.empty?
  return 0 if a.empty?
  return 1 + lis(b.drop(1), a.drop(1)) if a.first == b.first
  return 1 + lis(b, a.drop(1)) if a.first < b.first
  lis(a, b.drop(1))
end

while n = gets
  y_ax = {}
  points = []
  n.to_i.times do
    x, y = gets.split(' ').map(&:to_i)
    (y_ax[y] ||= []) << x
  end
  y_ax.each_pair do |y, x_up|
    x_down = y_ax[y - 2] || []
    points << lis(x_up.sort, x_down.sort)
    points << lis(x_down.sort, x_up.sort)
  end
  puts points.max
end
