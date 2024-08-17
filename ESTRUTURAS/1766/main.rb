def get_reindeers(n)
  reindeers = []
  n.times do
    s, w, a, h = gets.split
    reindeers.push([s, w.to_i, a.to_i, h.to_f])
  end
  reindeers.sort_by { |x| [-x[1], x[2], x[3]] }
end

def formatted_print(scenario, m, reindeers)
  puts "CENARIO {#{scenario}}"
  m.times do |i|
    puts "#{i + 1} - #{reindeers[i][0]}"
  end
end

t = gets.to_i
(1..t).each do |scenario|
  n, m = gets.split.map(&:to_i)
  reindeers = get_reindeers(n)
  formatted_print(scenario, m, reindeers)
end
