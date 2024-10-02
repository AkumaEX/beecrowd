def interest_rate(x, y)
  100 * (y - x) / x
end

def formatted_print(project, rate)
  puts "Projeto #{project + 1}:"
  puts "Percentual dos juros da aplicacao: %.2f %%" % rate
  puts
end

$stdin.each_line.with_index do |line, project|
  x, y = line.split.map(&:to_f)
  rate = interest_rate(x, y)
  formatted_print(project, rate)
end
