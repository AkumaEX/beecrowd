def is_the_funniest
  vowels = gets.gsub(/[^aeiou]/, "")
  vowels == vowels.reverse
end

puts is_the_funniest ? "S" : "N"
