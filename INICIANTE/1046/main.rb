# frozen_string_literal:true

def elapsed(start, finish)
  return finish - start if finish > start

  finish - start + 24
end

start, finish = gets.split.map(&:to_i)
puts "O JOGO DUROU #{elapsed(start, finish)} HORA(S)"
