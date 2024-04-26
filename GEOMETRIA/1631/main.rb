# frozen_string_literal:true

def get_min_distance(points)
  distances = []
  points.combination(2).each do |p1, p2|
    distance = 0
    points.each do |p|
      distance += _distance(*p1, *p2, *p)
    end
    distances.push(distance.abs)
  end
  distances.min
end

def _distance(x1, y1, x2, y2, x, y)
  ((x2 - x1) * (y - y1) - (x - x1) * (y2 - y1)) / Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
end

while (n = gets.to_i).nonzero?
  points = []
  n.times do
    x, y = gets.split.map(&:to_i)
    points.push([x, y])
  end
  puts format('%.3f', get_min_distance(points))
end
