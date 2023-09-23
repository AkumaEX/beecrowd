# frozen_string_literal:true

while (n = gets.to_i) != 0
  notes = gets.split.map(&:to_i)
  if (notes.sum % n).positive?
    puts(-1)
  else
    changes = 0
    average = notes.sum / n
    notes.each do |note|
      changes += note - average if note > average
    end
    puts changes + 1
  end
end
