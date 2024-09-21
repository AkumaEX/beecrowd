def is_correct(expression)
  stack = []
  expression.each_char do |c|
    if c == "("
      stack.push(c)
    elsif c == ")"
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

while (expression = gets&.strip)
  puts is_correct(expression) ? "correct" : "incorrect"
end
