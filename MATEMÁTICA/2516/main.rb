# frozen_string_literal:true

def elapsed(s, va, vb)
  s / (va - vb)
end

def formatted_print(time)
  puts time.negative? ? 'impossivel' : format('%.2f', time)
end

while line = gets
  s, va, vb = line.split.map(&:to_f)
  formatted_print(elapsed(s, va, vb))
end
