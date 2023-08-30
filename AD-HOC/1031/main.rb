# frozen_string_literal: true

while (n = gets.to_i) != 0
  (1..).each do |m|
    regions = [*1..n]
    selected = 0
    while regions.length > 1
      region = regions.delete_at(selected)
      break if region == 13

      selected = (selected + m - 1) % regions.length
    end
    if regions.last == 13
      puts m
      break
    end
  end
end
