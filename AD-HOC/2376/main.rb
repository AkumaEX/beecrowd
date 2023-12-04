# frozen_string_literal:true

def world_champion
  teams = %w[A B C D E F G H I J K L M N O P]
  [8, 4, 2, 1].each do |knockout|
    teams = _result(teams, knockout)
  end
  teams.first
end

def _result(teams, knockout)
  (0..knockout - 1).each do |team_m|
    team_n = team_m + 1
    m, n = gets.split.map(&:to_i)
    teams.delete_at(m > n ? team_n : team_m)
  end
  teams
end

puts world_champion
