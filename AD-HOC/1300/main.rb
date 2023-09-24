# frozen_string_literal:true

while (angle = gets)
  if (angle.to_i % 6).zero?
    puts 'Y'
  else
    puts 'N'
  end
end
