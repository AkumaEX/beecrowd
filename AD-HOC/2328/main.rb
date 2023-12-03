# frozen_string_literal:true

n = gets.to_i
pieces = gets.split.map(&:to_i).sum - n
puts pieces
