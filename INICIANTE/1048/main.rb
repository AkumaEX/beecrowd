# frozen_string_literal:true

def readjustment_rate(salary)
  return 0.04 if salary > 2000
  return 0.07 if salary > 1200
  return 0.10 if salary > 800
  return 0.12 if salary > 400

  0.15
end

def formatted_print(new_salary, money_earned, percentage)
  puts format('Novo salario: %.2f', new_salary)
  puts format('Reajuste ganho: %.2f', money_earned)
  puts format('Em percentual: %.0f %%', percentage * 100)
end

salary = gets.to_f
percentage = readjustment_rate(salary)
money_earned = salary * percentage
new_salary = salary + money_earned
formatted_print(new_salary, money_earned, percentage)
