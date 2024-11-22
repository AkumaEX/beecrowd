def min_spheres(n)
  n - (n**0.5).to_i
end

c = gets.to_i
c.times do
  n = gets.to_i
  puts min_spheres(n)
end
