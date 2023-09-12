# frozen_string_literal: true

while (k = gets.to_i) != 0
  n, m = gets.split.map(&:to_i)
  k.times do
    x, y = gets.split.map(&:to_i)
    if x == n || y == m
      puts 'divisa'
    elsif x < n
      if y < m
        puts 'SO'
      else
        puts 'NO'
      end
    elsif y < m
      puts 'SE'
    else
      puts 'NE'
    end
  end

end
