def get_students(q)
  students = []
  q.times do
    a, s, c = gets.split
    students.push([a, s, c.to_i])
  end
  students
end

def formatted_print(students)
  students.sort_by { |x| [x[2], x[1], x[0]] }.each do |student|
    puts student.first
  end
end

while (q = gets&.to_i)
  students = get_students(q)
  formatted_print(students)
end
