# Codility Lesson 16 - Dynamic Programming
# NumberSolitaire
# In a given array, find the subset of maximal sum in which the distance between consecutive elements is at most 6.

def solution(a)
  d = 6
  n = a.length
  sums = [a[0]] * d

  for i in 1...n do
    sums[i % d] = sums.max + a[i]
  end

  sums[(n-1) % d]
end