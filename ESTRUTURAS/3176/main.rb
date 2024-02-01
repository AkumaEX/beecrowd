# frozen_string_literal:true

def print_formatted(dwarves, n)
  teams = n / 3
  teams.times do |team|
    puts "Time #{team + 1}"
    3.times do |shift|
      puts dwarves[team + teams * shift].join(' ')
    end
    puts
  end
end

dwarves = []
n = gets.to_i
n.times do
  dwarves.push(gets.split)
end
dwarves.sort!.sort! { |a, b| b[1] <=> a[1] }
print_formatted(dwarves, n)
