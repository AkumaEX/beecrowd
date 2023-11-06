# frozen_string_literal:true

def first_civilization(n)
  messages = {}
  n.times do
    civilization, received, traveled = gets.split
    messages[received.to_i - traveled.to_i] = civilization
  end
  smallest_year = messages.keys.min
  messages[smallest_year]
end

while (n = gets.to_i).positive?
  puts first_civilization(n)
end
