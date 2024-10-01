require "set"

def get_items
  gets.split.to_set
end

def formatted_print(items)
  puts items.sort.join(" ")
end

n = gets.to_i
n.times do
  items = get_items
  formatted_print(items)
end
