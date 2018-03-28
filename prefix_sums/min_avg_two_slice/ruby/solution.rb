# Codility Lesson 5 - Prefix Sums
# MinAvgTwoSlice
# Find the minimal average of any slice containing at least two elements.

def solution(a)
  min_2_index = 0
  min_3_index = 0
  min_2 = Float::INFINITY
  min_3 = Float::INFINITY

  for i in 1..a.length - 1 do
    avg = a[i-1] + a[i]
    if avg < min_2
      min_2 = avg
      min_2_index = i - 1
    end
  end

  for i in 2..a.length - 1 do
    avg = a[i-2] + a[i-1] + a[i]
    if avg < min_3
      min_3 = avg
      min_3_index = i - 2
    end
  end

  if min_2 * 3 <= min_3 * 2
    return min_2_index
  else
    return min_3_index
  end
end
