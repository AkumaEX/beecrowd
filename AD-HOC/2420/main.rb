# frozen_string_literal:true

def section(a)
  target = a.sum / 2
  k = 0
  size = 0
  while size < target
    size += a[k]
    k += 1
  end
  k
end

gets
a = gets.split.map(&:to_i)
puts section(a)
