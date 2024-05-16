# frozen_string_literal:true

def sum_numbers(string)
  string.scan(/\d+/).map(&:to_i).sum
end

n = gets.to_i
n.times { puts sum_numbers(gets) }
