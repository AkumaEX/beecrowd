# frozen_string_literal:true

def seconds(start_d, start_h, start_m, start_s, end_d, end_h, end_m, end_s)
  86_400 * (end_d - start_d) + 3600 * (end_h - start_h) + 60 * (end_m - start_m) + (end_s - start_s)
end

def formatted_print(elapsed)
  puts "#{elapsed / 86_400} dia(s)"
  elapsed %= 86_400
  puts "#{elapsed / 3600} hora(s)"
  elapsed %= 3600
  puts "#{elapsed / 60} minuto(s)"
  puts "#{elapsed % 60} segundo(s)"
end

start_d = gets.split[1].to_i
start_h, start_m, start_s = gets.split(' : ').map(&:to_i)
end_d = gets.split[1].to_i
end_h, end_m, end_s = gets.split(' : ').map(&:to_i)
elapsed = seconds(start_d, start_h, start_m, start_s, end_d, end_h, end_m, end_s)
formatted_print(elapsed)
