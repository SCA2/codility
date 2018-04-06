# Codility Lesson 10 - Prime and Composite Numbers
# CountFactors
# Count factors of given number n.

def solution(n)
  x = (n**0.5).floor
  (1..x).reduce(0) { |s, i| n % i == 0 ? s += (i * i == n ? 1 : 2) : s }
end