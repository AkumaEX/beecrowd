# frozen_string_literal:true

def get_cards(deck)
  discarded = []
  while deck.length > 1
    discarded.push(deck.shift)
    deck.push(deck.shift)
  end
  [discarded, deck]
end

def print_formatted(discarded, remaining)
  puts "Discarded cards: #{discarded.join(', ')}"
  puts "Remaining card: #{remaining.first}"
end

while (n = gets.to_i).nonzero?
  deck = [*1..n]
  discarded, remaining = get_cards(deck)
  print_formatted(discarded, remaining)
end
