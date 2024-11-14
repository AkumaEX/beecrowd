require "set"

def same_place(n)
  lightnings = Set[]
  n.times { lightnings.add(gets) }
  lightnings.size < n
end

n = gets.to_i
puts same_place(n) ? "1" : "0"
