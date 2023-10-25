# frozen_string_literal:true

def get_hash_table(m)
  hash_table = []
  m.times { hash_table.push([]) }
  keys = gets.split.map(&:to_i)
  keys.each { |key| hash_table[key % m].push(key) }
  hash_table
end

def print_formatted(hash_table)
  hash_table.each_with_index do |keys, i|
    print "#{i} -> "
    keys.each { |key| print "#{key} -> " }
    puts '\\'
  end
end

n = gets.to_i
n.times do |i|
  m, _c = gets.split.map(&:to_i)
  hash_table = get_hash_table(m)
  print_formatted(hash_table)
  puts if i < n - 1
end
