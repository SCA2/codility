# Codility Lesson 4 - Counting Elements
# FrogRiverOne
# Find the earliest time when a frog can jump to the other side of a river.

def solution(x, a)
  path = {}
  a.each_with_index do |c, i|
    path[c] = c
    return i if path.length == x
  end
  -1
end