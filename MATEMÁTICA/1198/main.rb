while (line = gets)
  hashmat, opponent = line.split.map(&:to_i)
  puts (hashmat - opponent).abs
end
