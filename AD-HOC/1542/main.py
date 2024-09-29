def total_pages(q, d, p):
    return (q * d * p) // (p - q)


def formatted_print(pages):
    print(f'{pages} {"paginas" if pages > 1 else "pagina"}')


quantities = list(map(int, input().split()))
while (len(quantities) > 1):
    pages = total_pages(*quantities)
    formatted_print(pages)
    quantities = list(map(int, input().split()))
