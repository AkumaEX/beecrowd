# frozen_string_literal:true

def elapsed(from_day, from_month, to_day, to_month)
  days = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31 }
  total = to_day - from_day
  from_month.upto(to_month - 1).each do |month|
    total += days[month]
  end
  total
end

from_day, from_month = gets.split.map(&:to_i)
to_day, to_month = gets.split.map(&:to_i)
puts elapsed(from_day, from_month, to_day, to_month)
