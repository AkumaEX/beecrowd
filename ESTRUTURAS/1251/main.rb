def get_frequencies(line)
  frequencies = Hash.new(0)
  line.strip.each_byte do |c|
    frequencies[c] += 1
  end
  frequencies.sort_by { |c, frequency| [frequency, -c] }
end

def formatted_print(i, frequencies)
  puts if i.positive?
  frequencies.each do |c, frequency|
    puts "#{c} #{frequency}"
  end
end

$stdin.each_with_index do |line, i|
  formatted_print(i, get_frequencies(line))
end
