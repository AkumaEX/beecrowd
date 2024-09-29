def total_pages(q, d, p)
  (q * d * p) / (p - q)
end

def formatted_print(pages)
  puts "#{pages} #{(pages > 1) ? "paginas" : "pagina"}"
end

quantities = gets.split.map(&:to_i)
while quantities.size > 1
  pages = total_pages(*quantities)
  formatted_print(pages)
  quantities = gets.split.map(&:to_i)
end
