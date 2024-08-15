def get_distance(x1, y1, x2, y2)
  ((x1 - x2)**2 + (y1 - y2)**2)**0.5
end

def nearest(n, balls)
  min_distance = get_distance(balls[0][0], balls[0][1], 1420, 2840)
  nearest_ball = 0
  (1..n).each do |ball|
    distance = get_distance(balls[0][0], balls[0][1], balls[ball][0], balls[ball][1])
    if distance < min_distance
      min_distance = distance
      nearest_ball = ball
    end
  end
  nearest_ball
end

c = gets.to_i
c.times do
  n = gets.to_i
  balls = []
  (n + 1).times { balls.push(gets.split.map(&:to_i)) }
  puts nearest(n, balls)
end
