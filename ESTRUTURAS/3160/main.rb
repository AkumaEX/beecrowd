# frozen_string_literal:true

def new_list(l, n, x)
  if l.include? x
    i = l.index(x)
    return (l[...i] + n + l[i..]).join(' ')
  end
  (l + n).join(' ')
end

l = gets.strip.split
n = gets.strip.split
x = gets.strip
puts new_list(l, n, x)
