# MenOfPassion(A[], n) {
#    sum <- 0;
#    for i <- 1 to n - 1
#        for j <- i + 1 to n
#            sum <- sum + A[i] × A[j]; # 코드1
#    return sum;
#}

# i = 1일 때,  j = 2 ~ 7 (6)
# i = 2일 때,  j = 3 ~ 7 (5)
# i = 3일 때,  j = 4 ~ 7 (4)
# i = 4일 때,  j = 5 ~ 7 (3)
# i = 5일 때,  j = 6 ~ 7 (2)
# i=  6일 때,  j = 7 (1)

# (n-1) + (n-2) + (n-3) + 1번 수행한다. 첫째항이 1, 등차가 1, 마지막 항이 n-1인 등차수열이다
# 등차수열의 합 공식. n { 2a + (n-1)d } / 2 을 통해 계산할 수 있다.

n = int(input())

print(n*(n-1) // 2 )
print(2) # 2중 반복문으로 인해 최고차항 차수는 2