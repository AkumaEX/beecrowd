n = gets.to_i
(1..n).each do |value|
  puts "#{value}^2 = #{value**2}" if value.even?
end
