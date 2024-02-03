# frozen_string_literal:true

while gets.to_i.positive?
  p = gets.split.map(&:to_i)
  cumulative_debt = 0
  times_to_ask = 0
  p.each do |debt|
    cumulative_debt += debt
    times_to_ask += 1 if (cumulative_debt % 100).zero?
  end
  puts times_to_ask
end
