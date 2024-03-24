# frozen_string_literal:true

def formatted_print(sequence)
  sequence.each do |num|
    puts num
  end
end

original = gets.split.map(&:to_i)
formatted_print(original.sort)
puts
formatted_print(original)
