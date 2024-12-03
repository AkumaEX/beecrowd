def get_flights(a, v)
  flights = [0] * a
  v.times do
    x, y = gets.split.map(&:to_i)
    flights[x - 1] += 1
    flights[y - 1] += 1
  end
  flights
end

def formatted_print(test, flights)
  max_flights = flights.max
  puts "Teste #{test}"
  flights.each.with_index(1) do |flights, airport|
    print "#{airport} " if flights == max_flights
  end
  puts
  puts
end

test = 1
a, v = gets.split.map(&:to_i)
while a.nonzero? || v.nonzero?
  formatted_print(test, get_flights(a, v))
  test += 1
  a, v = gets.split.map(&:to_i)
end
