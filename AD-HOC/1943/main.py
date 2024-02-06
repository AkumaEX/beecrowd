def get_category(k):
    for category in [1, 3, 5, 10, 25, 50, 100]:
        if k <= category:
            return category


k = int(input())
print(f'Top {get_category(k)}')
