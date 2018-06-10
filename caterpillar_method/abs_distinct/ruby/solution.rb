# Codility Lesson 15 - Caterpillar Method
# AbsDistinct
# Return the absolute distinct count of array A.

def solution(a)
  a.group_by {|i| i.abs }.length
end
