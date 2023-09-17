# frozen_string_literal: true

n = gets.to_i
n.times do
  result = []
  str_i, str_j = gets.split
  i = 0
  j = 0
  while i < str_i.length || j < str_j.length
    if i < str_i.length
      result.append(str_i[i])
      i += 1
    end
    if j < str_j.length
      result.append(str_j[j])
      j += 1
    end
  end
  puts result.join
end
