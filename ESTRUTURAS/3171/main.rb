# frozen_string_literal:true

require 'set'

def can_fix(l)
  segments = []
  l.times do
    segments.push(gets.split.map(&:to_i))
  end
  connected = segments.shift.to_set
  has_change = true
  while has_change
    has_change = false
    segments.size.times do
      x, y = segments.shift
      if (connected.include? x) || (connected.include? y)
        connected.merge([x, y])
        has_change = true
      else
        segments.push([x, y])
      end
    end
  end
  segments.empty?
end

l = gets.split[1].to_i
puts can_fix(l) ? 'COMPLETO' : 'INCOMPLETO'
