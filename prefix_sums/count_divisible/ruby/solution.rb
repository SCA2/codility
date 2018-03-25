# Codility Lesson 5 - Prefix Sums
# CountDiv
# Compute number of integers divisible by k in range [a..b].

def solution(a, b, k)
  b.fdiv(k).floor - a.fdiv(k).ceil + 1
end