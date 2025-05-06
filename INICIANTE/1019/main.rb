n = gets.to_i
hours = n / 3600
n %= 3600
minutes = n / 60
seconds = n % 60
puts "#{hours}:#{minutes}:#{seconds}"
