# frozen_string_literal: true

h1, m1, h2, m2 = gets.split.map(&:to_i)
while h1 != 0 || m1 != 0 || h2 != 0 || m2 != 0
  minutes = 0
  if m2 < m1
    h2 -= 1
    m2 += 60
  end
  minutes = m2 - m1
  h2 += 24 if h2 < h1
  minutes += (h2 - h1) * 60
  puts minutes
  h1, m1, h2, m2 = gets.split.map(&:to_i)
end
