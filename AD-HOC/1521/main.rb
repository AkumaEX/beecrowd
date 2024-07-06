def find(students, k)
  student = students[k - 1]
  (student == k) ? k : find(students, student)
end

while gets.to_i.positive?
  students = gets.split.map(&:to_i)
  k = gets.to_i
  puts find(students, k)
end
