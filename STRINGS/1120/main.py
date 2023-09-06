D, N = input().split()
while(D != '0' and N != '0'):
    print(int(N.replace(D, '') or 0))
    D, N = input().split()