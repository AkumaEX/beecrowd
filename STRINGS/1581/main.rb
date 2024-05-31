# frozen_string_literal:true

require 'set'

def language(k)
  languages = Set[]
  k.times { languages.add(gets) }
  languages.length == 1 ? languages.first : 'ingles'
end

n = gets.to_i
n.times do
  k = gets.to_i
  puts language(k)
end
