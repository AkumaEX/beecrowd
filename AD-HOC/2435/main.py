na, da, va = map(int, input().split())
nb, db, vb = map(int, input().split())
print(na if float(da / va) < float(db / vb) else nb)
