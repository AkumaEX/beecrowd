def _first_pass(text)
  text.chars.map(&:ord).map { |i| i.chr.match?(/[A-Za-z]/) ? i + 3 : i }
end

def _second_pass(text)
  text.reverse
end

def _third_pass(text)
  middle = text.length / 2
  finish = text.length - 1
  (middle..finish).each do |i|
    text[i] -= 1
  end
  text
end

def encrypt(text)
  _third_pass(_second_pass(_first_pass(text))).map(&:chr).join
end

N = gets.chomp.to_i
N.times do
  puts encrypt(gets.chomp)
end
