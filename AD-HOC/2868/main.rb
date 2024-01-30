# frozen_string_literal:true

c = gets.to_i
c.times do
  expression, result = gets.split('=')
  difference = (eval(expression.sub('x', '*')) - result.to_i).abs
  puts format('E%sou!', 'r' * difference)
end
