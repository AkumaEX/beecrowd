# frozen_string_literal:true

def fits?(r, w, l)
  r**2 >= (w / 2)**2 + (l / 2)**2
end

pizza = 1
line = gets.split
while line.length > 1
  r, w, l = line.map(&:to_f)
  puts "Pizza #{pizza} #{fits?(r, w, l) ? 'fits on the table.' : 'does not fit on the table.'}"
  pizza += 1
  line = gets.split
end
