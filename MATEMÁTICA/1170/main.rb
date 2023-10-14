# frozen_string_literal:true

def elapsed(c)
  days = 0
  while c > 1
    days += 1
    c /= 2
  end
  days
end

n = gets.to_i
n.times do
  c = gets.to_f
  puts "#{elapsed(c)} dias"
end
