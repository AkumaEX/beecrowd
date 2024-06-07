# frozen_string_literal:true

require 'set'

results = { 3 => 'terno', 4 => 'quadra', 5 => 'quina', 6 => 'sena' }
your = gets.split.map(&:to_i).to_set
draw = gets.split.map(&:to_i).to_set
hits = (your & draw).size
puts results.fetch(hits, 'azar')
