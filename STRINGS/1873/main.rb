# frozen_string_literal:true

wins = {
  'tesoura' => %w[papel lagarto],
  'papel' => %w[pedra spock],
  'pedra' => %w[lagarto tesoura],
  'lagarto' => %w[spock papel],
  'spock' => %w[tesoura pedra]
}

c = gets.to_i
c.times do
  rajesh, sheldon = gets.strip.split
  if wins[rajesh].include? sheldon
    puts 'rajesh'
  elsif wins[sheldon].include? rajesh
    puts 'sheldon'
  else
    puts 'empate'
  end
end
