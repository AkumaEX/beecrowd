require "set"

n = gets.to_i
students = Set[]
n.times { students.add(gets) }
puts students.size
