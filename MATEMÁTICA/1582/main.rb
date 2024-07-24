def formatted_print(sides)
  sides.sort!
  if sides[2]**2 == sides[1]**2 + sides[0]**2
    if sides[2].gcd(sides[1]).gcd(sides[0]) == 1
      puts "tripla pitagorica primitiva"
    else
      puts "tripla pitagorica"
    end
  else
    puts "tripla"
  end
end

while (line = gets)
  sides = line.split.map(&:to_i)
  formatted_print(sides)
end
