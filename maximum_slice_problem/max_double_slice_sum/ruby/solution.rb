# Codility Lesson 9 - Maximum Slice Problem
# MaxDoubleSliceSum
# Find the maximal sum of any double slice.

def solution(a)
  # Don't need first and last elements
  a = a[1..-2]

  # Calculate sums from left. Empty slice = 0
  sum_to_here = 0
  l_sums = a.reduce([]) do |sums, c|
    sum_to_here = [0, sum_to_here + c].max
    sums.push(sum_to_here)
  end

  # Calculate sums from right. Empty slice = 0
  sum_to_here = 0
  r_sums = a.reverse.reduce([]) do |sums, c|
    sum_to_here = [0, sum_to_here + c].max
    sums.unshift(sum_to_here)
  end

  # Shift to align sums
  l_sums.unshift(0).unshift(0)
  r_sums.push(0).push(0)

  # Find max sum
  l_sums.zip(r_sums)[1..-2].max { |a, b| a.sum <=> b.sum }.sum
end