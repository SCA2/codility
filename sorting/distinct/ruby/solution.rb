# Codility Lesson 6 - Sorting
# Distinct
# Compute number of distinct values in an array.

def solution(a)
  a.group_by {|i| i }.length
end