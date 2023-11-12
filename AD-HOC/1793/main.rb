# frozen_string_literal:true

def get_active_time(n)
  times = gets.split.map(&:to_i)
  active_time = n * 10
  0.upto(n - 2).each do |i|
    difference = times[i + 1] - times[i]
    active_time -= 10 - difference if difference < 10
  end
  active_time
end

while n = gets.to_i.nonzero?
  puts get_active_time(n)
end
