# frozen_string_literal:true

def get_water_bill(consumption)
  return 7 if consumption <= 10
  return 7 + (consumption - 10) if consumption <= 30
  return 7 + 20 + (consumption - 30) * 2 if consumption <= 100

  7 + 20 + 140 + (consumption - 100) * 5
end

n = gets.to_i
puts get_water_bill(n)
