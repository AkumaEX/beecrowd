# frozen_string_literal:true

require 'date'

def seconds(start_day, start_hour, start_minute, start_second, end_day, end_hour, end_minute, end_second)
  start_date = Time.new(2024, 4, start_day, start_hour, start_minute, start_second)
  end_date = Time.new(2024, 4, end_day, end_hour, end_minute, end_second)
  (end_date - start_date).to_i
end

def formatted_print(elapsed)
  days = elapsed / 86_400
  elapsed %= 86_400
  hours = elapsed / 3600
  elapsed %= 3600
  minutes = elapsed / 60
  seconds = elapsed % 60
  puts "#{days} dia(s)"
  puts "#{hours} hora(s)"
  puts "#{minutes} minuto(s)"
  puts "#{seconds} segundo(s)"
end

start_day = gets.split[1].to_i
start_hour, start_minute, start_second = gets.split(' : ').map(&:to_i)
end_day = gets.split[1].to_i
end_hour, end_minute, end_second = gets.split(' : ').map(&:to_i)
elapsed = seconds(start_day, start_hour, start_minute, start_second, end_day, end_hour, end_minute, end_second)
formatted_print(elapsed)
