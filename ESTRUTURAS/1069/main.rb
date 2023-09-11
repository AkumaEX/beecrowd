# frozen_string_literal:true

n = gets.to_i
n.times do
  diamonds = 0
  potential = 0
  gets.each_char do |object|
    if object != '.'
      if object == '<'
        potential += 1
      elsif object == '>' && potential.positive?
        potential -= 1
        diamonds += 1
      end
    end
  end
  puts diamonds
end
