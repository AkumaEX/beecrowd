# frozen_string_literal:true

def sequence(cards)
  return 'C' if cards[0] < cards[1] && cards[1] < cards[2] && cards[2] < cards[3] && cards[3] < cards[4]
  return 'D' if cards[0] > cards[1] && cards[1] > cards[2] && cards[2] > cards[3] && cards[3] > cards[4]

  'N'
end

cards = gets.split.map(&:to_i)
puts sequence(cards)
