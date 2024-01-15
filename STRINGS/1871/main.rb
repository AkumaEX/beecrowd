# frozen_string_literal:true

def no_zero_sum(m, n)
  (m + n).to_s.gsub('0', '')
end

m, n = gets.split.map(&:to_i)
while m.nonzero? && n.nonzero?
  puts no_zero_sum(m, n)
  m, n = gets.split.map(&:to_i)
end
