require "set"

def not_returned(n)
  all_divers = (1..n).to_set
  returned = gets.split.map(&:to_i).to_set
  all_divers.difference(returned).sort
end

def formatted_print(divers)
  divers.each { |diver| print "#{diver} " }
  puts
end

while (line = gets)
  n, r = line.split.map(&:to_i)
  if n > r
    divers = not_returned(n)
    formatted_print(divers)
  else
    gets
    puts "*"
  end
end
