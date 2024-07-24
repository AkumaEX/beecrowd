def classify(sides)
  sides.sort!
  if sides[2]**2 == sides[1]**2 + sides[0]**2
    return "tripla pitagorica primitiva" if sides[2].gcd(sides[1]).gcd(sides[0]) == 1
    return "tripla pitagorica"
  end
  "tripla"
end

while (line = gets)
  sides = line.split.map(&:to_i)
  puts classify(sides)
end
