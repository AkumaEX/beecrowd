def addition(n1, d1, n2, d2)
  [n1 * d2 + n2 * d1, d1 * d2]
end

def subtraction(n1, d1, n2, d2)
  [n1 * d2 - n2 * d1, d1 * d2]
end

def multiplication(n1, d1, n2, d2)
  [n1 * n2, d1 * d2]
end

def division(n1, d1, n2, d2)
  [n1 * d2, n2 * d1]
end

def simplify(nl, dl)
  smaller = nl.abs < dl.abs ? nl.abs : dl.abs
  smaller.downto(1).each do |i|
    return nl / i, dl / i if (nl % i).zero? && (dl % i).zero?
  end
end

n = gets.chomp.to_i
n.times do
  n1, _, d1, op, n2, _, d2 = gets.chomp.split(' ')
  case op
  when '+'
    nl, dl = addition(n1.to_i, d1.to_i, n2.to_i, d2.to_i)
  when '-'
    nl, dl = subtraction(n1.to_i, d1.to_i, n2.to_i, d2.to_i)
  when '*'
    nl, dl = multiplication(n1.to_i, d1.to_i, n2.to_i, d2.to_i)
  else
    nl, dl = division(n1.to_i, d1.to_i, n2.to_i, d2.to_i)
  end
  nr, dr = simplify(nl, dl)
  puts format("#{nl}/#{dl} = #{nr}/#{dr}")
end
