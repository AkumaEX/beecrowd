# frozen_string_literal:true

def formatted_print(meats)
  puts meats.sort.to_h.values.join(' ')
end

while line = gets
  meats = {}
  n = line.to_i
  n.times do
    meat, date = gets.split
    meats[date.to_i] = meat
  end
  formatted_print(meats)
end
