def get_infos(n)
  infos = {}
  n.times do
    name = gets
    color, size = gets.split
    if infos.include?(color)
      if infos[color].include?(size)
        infos[color][size].push(name)
      else
        infos[color][size] = [name]
      end
    else
      infos[color] = {size => [name]}
    end
  end
  infos
end

def formatted_print(infos)
  infos.keys.sort.each do |color|
    infos[color].keys.sort.reverse_each do |size|
      infos[color][size].sort.each do |name|
        puts "#{color} #{size} #{name}"
      end
    end
  end
end

n = gets.to_i
loop do
  infos = get_infos(n)
  formatted_print(infos)
  if (n = gets.to_i).nonzero?
    puts
  else
    break
  end
end
