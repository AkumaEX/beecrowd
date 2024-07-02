while True:
    number = input()
    if 'x' in number:
        print(int(number, 16))
    elif int(number) > -1:
        print(f'0x{int(number):X}')
    else:
        break
