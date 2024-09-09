def average
  grade_1 = gets.to_f
  while grade_1 < 0 || grade_1 > 10
    puts "nota invalida"
    grade_1 = gets.to_f
  end
  grade_2 = gets.to_f
  while grade_2 < 0 || grade_2 > 10
    puts "nota invalida"
    grade_2 = gets.to_f
  end
  (grade_1 + grade_2) / 2
end

puts "media = %.2f" % average
