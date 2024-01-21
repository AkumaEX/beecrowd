# frozen_string_literal:true

def mirrored_sequence(b, e)
  sequence = ''
  b.upto(e).each do |i|
    sequence += i.to_s
  end
  sequence + sequence.reverse
end

c = gets.to_i
c.times do
  b, e = gets.split.map(&:to_i)
  puts mirrored_sequence(b, e)
end
