# Codility Lesson 6 - Sorting
# Triangle
# Determine whether a triangle can be built from a given set of edges.

def solution(a)
  return 0 if a.length < 3
  a.sort.each_cons(3) { |e| return 1 if e[0] + e[1] > e[2] }
  return 0
end