# 1
# 1 + 6*1 = 7 
# 1 + 6*1 + 6*2 = 19 
# 1 + 6*1 + 6*2 + 6*3 = 37
# 1 + 6*1 + 6*2 + 6*3 + 6*4 = 61 <- 수열이다

cnt = 1
a = 1 # 수열 항 초기화

n = int(input())

# n이 현재 항보다 더 클 때 반복 
# n보다 작은 항 중, 가장 큰 항의 번호가 지나는 방의 수이다
while n > a:
  # 다음 항의 값 계산
  a += 6 * cnt
  # 몇 번째 항인지 저장
  cnt += 1

print(cnt)