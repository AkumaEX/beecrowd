# frozen_string_literal:true

def print_formatted(days)
  years = days / 365
  days = days % 365
  months = days / 30
  days = days % 30
  puts "#{years} ano(s)"
  puts "#{months} mes(es)"
  puts "#{days} dia(s)"
end

days = gets.to_i
print_formatted(days)
