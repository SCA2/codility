# Codility Lesson 4 - Counting Elements
# PermCheck
# Check whether array A is a permutation.

def solution(a)
  p = {}
  max = 0

  a.each do |c|
    p[c] = p[c] ? p[c] + 1 : 1
    return 0 if p[c] > 1
    max = [max, c].max()
  end

  if p.length != max
    return 0
  else
    return 1
  end
end