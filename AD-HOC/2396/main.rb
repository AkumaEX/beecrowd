# frozen_string_literal:true

def time_results(n)
  results = {}
  1.upto(n) do |car|
    time = gets.split.map(&:to_i).sum
    results[time] = car
  end
  results
end

def print_sorted(results)
  first, second, third = results.keys.sort[0..2]
  puts results[first]
  puts results[second]
  puts results[third]
end

n = gets.split.first.to_i
print_sorted(time_results(n))
