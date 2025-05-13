n1, n2, n3, n4 = map(float, input().split())
final_grade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10
print(f'Media: {final_grade:.1f}')
if final_grade < 5.0:
    print('Aluno reprovado.')
elif final_grade > 7.0:
    print('Aluno aprovado.')
else:
    print('Aluno em exame.')
    retake_grade = float(input())
    print(f'Nota do exame: {retake_grade}')
    final_grade = (final_grade + retake_grade) / 2
    print('Aluno reprovado.' if final_grade < 5.0 else 'Aluno aprovado.')
    print(f'Media final: {final_grade:.1f}')
