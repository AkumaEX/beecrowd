n1, n2, n3, n4 = gets.split.map(&:to_f)
final_grade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10
puts "Media: %.1f" % final_grade
if final_grade < 5.0
  puts "Aluno reprovado."
elsif final_grade > 7.0
  puts "Aluno aprovado."
else
  puts "Aluno em exame."
  retake_grade = gets.to_f
  puts "Nota do exame: #{retake_grade}"
  final_grade = (final_grade + retake_grade) / 2
  puts (final_grade < 5.0) ? "Aluno reprovado." : "Aluno aprovado."
  puts "Media final: %.1f" % final_grade
end
