# frozen_string_literal:true

def get_table(n)
  table = []
  n.times { table.push(gets.to_i) }
  table
end

def mines_from(table, n)
  mines = []
  n.times do |i|
    mines.push(table[i])
    mines[i] += table[i - 1] if i - 1 >= 0
    mines[i] += table[i + 1] if i + 1 < n
  end
  mines
end

def formatted_print(mines)
  mines.each { |mine| puts mine }
end

n = gets.to_i
table = get_table(n)
mines = mines_from(table, n)
formatted_print(mines)
