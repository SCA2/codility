# Codility Lesson 3 - Time Complexity
# FrogJmp
# Count minimal number of jumps from position X to Y.

def solution(x, y, d)
  (y - x).fdiv(d).ceil
end