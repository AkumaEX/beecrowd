def get_medals
  medals = {}
  $stdin.each do |description|
    3.times do |medal|
      country = gets.delete("\n")
      medals[country] = [0, 0, 0] if !medals.include?(country)
      medals[country][medal] += 1
    end
  end
  medals
end

def formatted_print(medals)
  puts "Quadro de Medalhas"
  medals.sort_by { |country, medals| [-medals[0], -medals[1], -medals[2], country] }.each do |country, medals|
    puts "#{country} #{medals.join(" ")}"
  end
end

medals = get_medals
formatted_print(medals)
