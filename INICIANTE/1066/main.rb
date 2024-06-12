# frozen_string_literal:true

def formatted_print(evens, positives, negatives)
  puts "#{evens} valor(es) par(es)"
  puts "#{5 - evens} valor(es) impar(es)"
  puts "#{positives} valor(es) positivo(s)"
  puts "#{negatives} valor(es) negativo(s)"
end

evens = 0
positives = 0
negatives = 0
5.times do
  number = gets.to_i
  evens += 1 if number.even?
  positives += 1 if number.positive?
  negatives += 1 if number.negative?
end
formatted_print(evens, positives, negatives)
