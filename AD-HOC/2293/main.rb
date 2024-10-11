def get_field(n)
  field = []
  n.times { field.push(gets.split.map(&:to_i)) }
  field
end

def get_max_worms(field)
  max_worms = 0
  field.each do |row|
    worms = row.sum
    max_worms = worms if worms > max_worms
  end
  field.transpose.each do |column|
    worms = column.sum
    max_worms = worms if worms > max_worms
  end
  max_worms
end

n = gets.split.map(&:to_i).first
puts get_max_worms(get_field(n))
