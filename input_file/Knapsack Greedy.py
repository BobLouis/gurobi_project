def readFile(path):
    with open(path) as f:
        a = []
        b = []
        count = 0
        for line in f.readlines():
            s = line.split()
            if s[0] == "c": # comment
                continue
            elif count == 0: # row, col
                M, N = list(map(int, s))
            elif count == 1: # obj
                v = list(map(int, s))
            else: # constraint
                s = list(map(int, s))
                a.append(s[:-1])
                b.append(s[-1])
            count += 1
    return M, N, v, a, b
    

path = "knpsk1.txt"
M, N, v, a, b = readFile(path)

ratio_j = [0 for j in range(N)]
for j in range(N):
    for i in range(M):
        if v[j] / a[i][j] > ratio_j[j]:
            ratio_j[j] = v[j] / a[i][j]

sorted_ratio = sorted(range(N), key = lambda j : ratio_j[j], reverse = True)

x = [0 for j in range(N)]
for index in sorted_ratio:
    for i in range(M):
        b[i] -= a[i][index]
    if min(b) < 0:
        break
    else:
        x[index] = 1
    
for j in range(N):
    print("x" + str(j + 1), x[j])