# Codility Lesson 6 - Sorting
# MaxProductOfThree
# Maximize A[P] * A[Q] * A[R] for any triplet (P, Q, R).

def solution(a)
  a.sort!

  # Product of 3 largest positive integers
  p = a[-1] * a[-2] * a[-3]

  # Product of 2 largest negative integers and largest positive integer
  n = a[0] * a[1] * a[-1]

  # Return the larger
  p > n ? p : n
end