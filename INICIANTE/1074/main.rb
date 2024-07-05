n = gets.to_i
n.times do
  x = gets.to_i
  if x.zero?
    puts "NULL"
  else
    print x.odd? ? "ODD " : "EVEN "
    puts x.negative? ? "NEGATIVE" : "POSITIVE"
  end
end
