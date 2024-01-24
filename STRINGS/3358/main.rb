# frozen_string_literal:true

n = gets.to_i
n.times do
  name = gets.strip
  if /[^aeiou]{3,}/i.match?(name)
    puts "#{name} nao eh facil"
  else
    puts "#{name} eh facil"
  end
end
