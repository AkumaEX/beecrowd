# frozen_string_literal:true

members = {
  1 => 'Rolien',
  2 => 'Naej',
  3 => 'Elehcim',
  4 => 'Odranoel'
}

n = gets.to_i
n.times do
  k = gets.to_i
  k.times do
    feedback = gets.to_i
    puts members[feedback]
  end
end
