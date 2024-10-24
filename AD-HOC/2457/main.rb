def percentage(char, text)
  count = 0
  text.each { |word| count += 1 if word.include?(char) }
  100.0 * count / text.length
end

char = gets.strip
text = gets.strip.split
puts "%.1f" % percentage(char, text)
