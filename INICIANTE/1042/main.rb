def formatted_print(sequence)
  sequence.each do |value|
    puts value
  end
end

original = gets.split.map(&:to_i)
formatted_print(original.sort)
puts
formatted_print(original)
