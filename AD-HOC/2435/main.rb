# frozen_string_literal:true

na, da, va = gets.split.map(&:to_i)
nb, db, vb = gets.split.map(&:to_i)
puts (da.to_f / va) < (db.to_f / vb) ? na : nb
