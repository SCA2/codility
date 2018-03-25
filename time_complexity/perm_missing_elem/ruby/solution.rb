# Codility Lesson 3 - Time Complexity
# PermMissingElem
# Find the missing element in a given permutation.

def solution(a)
  lookup = [0] * (a.length + 1)
  for c in a do
    lookup[c-1] = c
  end
  lookup.find_index(0) + 1
end