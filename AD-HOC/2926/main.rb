# frozen_string_literal:true

def print_formatted(i)
  a = 'a' * i
  puts "Ent#{a}o eh N#{a}t#{a}l!"
end

i = gets.to_i
print_formatted(i)
