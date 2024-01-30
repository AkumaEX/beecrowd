# frozen_string_literal:true

students = []
n, k = gets.split.map(&:to_i)
n.times do
  students.push(gets)
end
students.sort!
puts students[k - 1]
