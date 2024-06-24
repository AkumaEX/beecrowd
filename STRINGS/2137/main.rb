def get_books(n)
  books = []
  n.times { books.push(gets.to_i) }
  books.sort
end

def formatted_print(books)
  books.each { |book| puts format("%04d", book) }
end

while (n = gets&.to_i)
  books = get_books(n)
  formatted_print(books)
end
