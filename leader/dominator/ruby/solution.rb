# Codility Lesson 8 - Leader
# Dominator
# Find an index of an array such that its value occurs at more than half of indices in the array.

def solution(a)
  candidate = a[0]
  count = 0
  index = 0
  a.each_with_index do |d, idx|
    count = candidate == d ? count += 1 : count -= 1
    if count == 0
      candidate = d
      count = 1
      index = idx
    end
  end
  a.count { |d| d == candidate } * 2 > a.length ? index : -1
end