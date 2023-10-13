# frozen_string_literal:true

def can_catch(d, vf, vg)
  sg = vg * 12 / vf
  sg * sg >= d * d + 12 * 12
end

while (line = gets)
  d, vf, vg = line.split.map(&:to_i)
  puts can_catch(d, vf, vg) ? 'S' : 'N'
end
