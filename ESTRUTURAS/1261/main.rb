# frozen_string_literal:true

def get_hay_points(m)
  hay_points = {}
  m.times do
    description, value = gets.split
    hay_points[description] = value.to_i
  end
  hay_points
end

def get_salary(hay_points)
  salary = 0
  until (words = gets).include? '.'
    words.split.each do |description|
      salary += hay_points[description] || 0
    end
  end
  salary
end

m, n = gets.split.map(&:to_i)
hay_points = get_hay_points(m)
n.times do
  puts get_salary(hay_points)
end
