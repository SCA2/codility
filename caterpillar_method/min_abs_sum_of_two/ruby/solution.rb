# Codility Lesson 15 - Caterpillar Method
# MinAbsSumOfTwo
# Find the minimal absolute value of a sum of two elements

def solution(a)
  a.sort!

  return 2*a[0] if a[0] >= 0
  return -2*a[-1] if a[-1] <= 0

  lo, hi = 0, a.length - 1

  min = (a[hi] + a[lo]).abs

  while lo <= hi do
    new_min = a[lo] + a[hi]
    min = [min, new_min.abs].min
    if min == 0
      return min
    elsif new_min <= 0
      lo += 1
    else
      hi -= 1
    end
  end
  min
end