# frozen_string_literal:true

def attended(n)
  epr = 0
  ehd = 0
  intruders = 0
  n.times do
    course = gets.split[1]
    if course == 'EPR'
      epr += 1
    elsif course == 'EHD'
      ehd += 1
    else
      intruders += 1
    end
  end
  [epr, ehd, intruders]
end

def formatted_print(epr, ehd, intruders)
  puts "EPR: #{epr}"
  puts "EHD: #{ehd}"
  puts "INTRUSOS: #{intruders}"
end

while n = gets&.to_i
  epr, ehd, intruders = attended(n)
  formatted_print(epr, ehd, intruders)
end
