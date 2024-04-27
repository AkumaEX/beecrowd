# frozen_string_literal:true

def percentage_above_average(n, grades)
  average = grades.sum / n
  above_average = grades.filter(&->(grade) { grade > average }).size
  100 * above_average.to_f / n
end

c = gets.to_i
c.times do
  n, *grades = gets.split.map(&:to_i)
  puts format('%.3f%%', percentage_above_average(n, grades))
end
