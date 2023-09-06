# frozen_string_literal: true

d, n = gets.split
while d != '0' && n != '0'
  puts n.gsub(d, '').to_i
  d, n = gets.split
end
