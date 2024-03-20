# frozen_string_literal:true

def print_tree(n)
  whitespaces = n / 2
  treesize = 1
  while treesize <= n
    puts ' ' * whitespaces + '*' * treesize
    whitespaces -= 1
    treesize += 2
  end
  whitespaces = n / 2
  puts ' ' * whitespaces + '*'
  puts ' ' * (whitespaces - 1) + '***'
  puts
end

while line = gets
  n = line.to_i
  print_tree(n)
end
