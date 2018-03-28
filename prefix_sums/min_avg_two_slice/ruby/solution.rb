# Codility Lesson 5 - Prefix Sums
# MinAvgTwoSlice
# Find the minimal average of any slice containing at least two elements.

def solution(a)
  return 0 if a.length < 3

  # Find minimum 2-slice and its index - min_2 = [a, b], idx
  min_2 = a.each_cons(2).each_with_index.reduce do |i, j|
    i[0].sum() <= j[0].sum() ? i : j
  end

  # Find minimum 3-slice and its index - min_3 = [a, b], idx
  min_3 = a.each_cons(3).each_with_index.reduce do |i, j|
    i[0].sum() <= j[0].sum() ? i : j
  end

  # Integer cross multiply instead of float divide for average
  min_2[0] = min_2[0].sum() * 3
  min_3[0] = min_3[0].sum() * 2
  
  # Return index of smaller slice
  min_2[0] <= min_3[0] ? min_2[1] : min_3[1]
end
