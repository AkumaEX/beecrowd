# frozen_string_literal:true

def top_team(cv, ce, cs, fv, fe, fs)
  c_score = 3 * cv + ce
  f_score = 3 * fv + fe
  if c_score == f_score
    c_score += cs
    f_score += fs
  end
  return 'C' if c_score > f_score
  return 'F' if f_score > c_score

  '='
end

cv, ce, cs, fv, fe, fs = gets.split.map(&:to_i)
puts top_team(cv, ce, cs, fv, fe, fs)
