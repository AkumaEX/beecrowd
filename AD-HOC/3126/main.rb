# frozen_string_literal:true

gets
candidates = gets.split.map(&:to_i)
puts candidates.sum
