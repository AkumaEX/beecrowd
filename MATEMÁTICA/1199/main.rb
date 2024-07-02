loop do
  number = gets.strip
  if number.include? "x"
    puts number.to_i(16)
  elsif number.to_i.positive?
    puts "0x#{"%x".upcase % number}"
  else
    break
  end
end
