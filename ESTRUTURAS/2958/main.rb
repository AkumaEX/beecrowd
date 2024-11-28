def print_sorted(issues)
  issues.sort_by { |issue| [issue[1], issue[0]] }.reverse_each { |issue| puts issue }
end

issues = []
m = gets.split.first.to_i
m.times { issues += gets.split }
print_sorted(issues)
