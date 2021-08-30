def readFile(path):
    with open(path) as f:
        count = 0
        for line in f.readlines():
            s = line.split()
            if count == 0: # row, col
                M, N = list(map(int, s))
            elif count == 1: # obj
                v = list(map(int, s))
            else: # constraint
                s = list(map(int, s))
                a = s[:-1]
                b = s[-1]
            count += 1
    return M, N, v, a, b
    

path = "knpsk2.txt"
M, N, v, a, b = readFile(path)

ratio_j = [0 for j in range(N)]
for j in range(N):
    ratio_j[j] = v[j] / a[j]

sorted_ratio = sorted(range(N), key = lambda j : ratio_j[j], reverse = True)

x = [0 for j in range(N)]
for index in sorted_ratio:
    b -= a[index]
    if b < 0:
        break
    else:
        x[index] = 1
    
for j in range(N):
    print("x" + str(j + 1), x[j])