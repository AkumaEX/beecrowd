# frozen_string_literal:true

def can_keep_project?(areas)
  areas.sort!
  areas[0] * areas[3] == areas[1] * areas[2]
end

areas = gets.split.map(&:to_i)
puts can_keep_project?(areas) ? 'S' : 'N'
