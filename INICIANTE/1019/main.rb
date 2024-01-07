# frozen_string_literal:true

def print_formatted(n)
  hours = n / 3600
  n = n % 3600
  minutes = n / 60
  seconds = n % 60
  puts "#{hours}:#{minutes}:#{seconds}"
end

n = gets.to_i
print_formatted(n)
