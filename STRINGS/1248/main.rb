# frozen_string_literal:true

def dinner(diet, breakfast, lunch)
  (breakfast + lunch).each_char do |food|
    return 'CHEATER' unless diet.include? food

    diet = diet.sub(food, '')
  end
  diet.chars.sort.join
end

n = gets.to_i
n.times do
  diet = gets
  breakfast = gets
  lunch = gets
  puts dinner(diet, breakfast, lunch)
end
