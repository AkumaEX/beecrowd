days = gets.to_i
years = days / 365
days %= 365
months = days / 30
days %= 30
puts "#{years} ano(s)"
puts "#{months} mes(es)"
puts "#{days} dia(s)"
