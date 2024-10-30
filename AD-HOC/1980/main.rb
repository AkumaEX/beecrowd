while (s = gets.strip) != "0"
  puts (1..s.length).reduce(:*)
end
