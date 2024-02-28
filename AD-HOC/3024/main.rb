# frozen_string_literal:true

def maximum_viewpoints(n, x, a)
  max = 1
  viewpoints = 1
  (0..n - 2).each do |i|
    if a[i + 1] - a[i] > x
      viewpoints = 1
    elsif (viewpoints += 1) > max
      max = viewpoints
    end
  end
  max
end

n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
puts maximum_viewpoints(n, x, a)
