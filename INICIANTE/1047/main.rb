# frozen_string_literal:true

def elapsed(start_h, start_m, end_h, end_m)
  start_minutes = 60 * start_h + start_m
  end_minutes = 60 * end_h + end_m
  elapsed_m += 1440 if (elapsed_m = end_minutes - start_minutes) < 1
  elapsed_h = elapsed_m / 60
  elapsed_m = elapsed_m % 60
  [elapsed_h, elapsed_m]
end

start_h, start_m, end_h, end_m = gets.split.map(&:to_i)
elapsed_h, elapsed_m = elapsed(start_h, start_m, end_h, end_m)
puts "O JOGO DUROU #{elapsed_h} HORA(S) E #{elapsed_m} MINUTO(S)"
