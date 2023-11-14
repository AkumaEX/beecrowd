# frozen_string_literal:true

n = gets.to_i
la, lb = gets.split.map(&:to_i)
sa, sb = gets.split.map(&:to_i)

is_possible = la <= n && n <= lb && sa <= n && n <= sb
puts is_possible ? 'possivel' : 'impossivel'
