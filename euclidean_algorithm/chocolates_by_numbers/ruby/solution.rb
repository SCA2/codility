# Codility Lesson 12 - Euclidean Algorithm
# ChocolatesByNumbers
# There are N chocolates in a circle. Count the number of chocolates you will eat.

def gcd(a, b)
  a % b == 0 ? b : gcd(b, a % b)
end

def solution(n, m)
  n / gcd(n, m)
end