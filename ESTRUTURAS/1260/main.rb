def get_trees
  trees = {}
  while (tree = gets&.strip)
    break if tree.empty?
    trees[tree] = 0 if !trees.key?(tree)
    trees[tree] += 1
  end
  trees
end

def formatted_print(c, trees)
  puts if c.nonzero?
  total = trees.values.sum
  trees.keys.sort.each do |tree|
    puts "#{tree} #{"%.4f" % (100.0 * trees[tree] / total)}"
  end
end

n = gets.to_i
gets
n.times do |c|
  formatted_print(c, get_trees)
end
