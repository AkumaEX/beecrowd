# frozen_string_literal:true

def print_result(n1, n2, n3, n4)
  final_grade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10
  puts format('Media: %.1f', final_grade)
  if final_grade < 5.0
    puts 'Aluno reprovado.'
  elsif final_grade > 7.0
    puts 'Aluno aprovado.'
  else
    puts 'Aluno em exame.'
    _print_retake_result(final_grade)
  end
end

def _print_retake_result(final_grade)
  retake_grade = gets.to_f
  puts format('Nota do exame: %.1f', retake_grade)
  final_grade = (final_grade + retake_grade) / 2
  puts final_grade < 5.0 ? 'Aluno reprovado.' : 'Aluno aprovado.'
  puts format('Media final: %.1f', final_grade)
end

n1, n2, n3, n4 = gets.split.map(&:to_f)
print_result(n1, n2, n3, n4)
