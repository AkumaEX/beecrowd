# frozen_string_literal:true

def get_minimum(r, n)
  27.times do |minimum|
    return minimum if r <= n * (1 + minimum)
  end
  -1
end

c = 1
r, n = gets.split.map(&:to_i)
while r.nonzero? && n.nonzero?
  mininum = get_minimum(r, n)
  puts "Case #{c}: #{mininum >= 0 ? mininum : 'impossible'}"
  c += 1
  r, n = gets.split.map(&:to_i)
end
