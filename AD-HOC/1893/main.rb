def moon_stage(before, after)
  return "nova" if after < 3
  return "cheia" if after > 96
  return "crescente" if after > before
  "minguante"
end

before, after = gets.split.map(&:to_i)
puts moon_stage(before, after)
