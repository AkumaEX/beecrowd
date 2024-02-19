# frozen_string_literal:true

def get_num_variations(s)
  3**s.scan(/[AEIOS]/i).length * 2**s.scan(/[^AEIOS]/i).length
end

t = gets.to_i
t.times do
  s = gets.strip
  num_variations = get_num_variations(s)
  puts num_variations
end
