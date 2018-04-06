# Codility Lesson 9 - Maximum Slice Problem
# MaxSliceSum
# Find a maximum sum of a compact subsequence of array elements.

def solution(a)
  sum_to_here = -Float::INFINITY
  a.reduce(sum_to_here) do |sum, c|
    sum_to_here = [sum_to_here + c, c].max
    [sum, sum_to_here].max
  end
end