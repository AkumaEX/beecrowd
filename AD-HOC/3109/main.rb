# frozen_string_literal:true

def update(desks, a, b)
  desks[a], desks[b] = desks[b], desks[a]
end

def query(desks, employee, a)
  return 0 if employee == a

  1 + query(desks, desks[employee], a)
end

n = gets.to_i
q = gets.to_i

desks = (0..n).to_a
q.times do
  event = gets.split.map(&:to_i)
  a = event[1] - 1
  if event.first == 1
    b = event[2] - 1
    update(desks, a, b)
  else
    puts query(desks, desks[a], a)
  end
end
