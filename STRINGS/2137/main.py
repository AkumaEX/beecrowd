from sys import stdin


def get_books(n):
    return sorted([int(next(stdin)) for _ in range(n)])


def formatted_print(books):
    for book in books:
        print(f'{book:04d}')


for n in map(int, stdin):
    books = get_books(n)
    formatted_print(books)
