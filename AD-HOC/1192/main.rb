# frozen_string_literal:true

n = gets.to_i
n.times do
  seq = gets
  digit1 = seq[0].to_i
  letter = seq[1]
  digit2 = seq[2].to_i
  if digit2 == digit1
    puts digit2 * digit1
  elsif letter == letter.upcase
    puts digit2 - digit1
  else
    puts digit2 + digit1
  end
end
