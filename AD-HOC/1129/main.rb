# frozen_string_literal: true

alternatives = %w[A B C D E]
while (n = gets.to_i) != 0
  n.times do
    choice = gets.split.each_with_index.filter_map { |mean, i| alternatives[i] if mean.to_i <= 127 }
    if choice.length == 1
      puts choice
    else
      puts '*'
    end
  end
end
