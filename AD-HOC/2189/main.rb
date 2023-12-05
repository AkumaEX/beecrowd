# frozen_string_literal:true

def winner(tickets)
  participant = 1
  tickets.each do |ticket|
    break if participant == ticket

    participant += 1
  end
  participant
end

def print_formatted(test, ticket)
  puts "Teste #{test}"
  puts ticket
  puts
end

test = 1
while gets.to_i.nonzero?
  tickets = gets.split.map(&:to_i)
  print_formatted(test, winner(tickets))
  test += 1
end
