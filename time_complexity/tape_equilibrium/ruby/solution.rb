# Codility Lesson 3 - Time Complexity
# TapeEquilibrium
# Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.

def solution(a)
  left = a[1..-1].reduce([a[0]]) { |s, i| s.push(s[-1] + i) }.reverse()
  right = a.reverse()[1..-1].reduce([a[-1]]) { |s, i| s.push(s[-1] + i) }
  min = 2000
  for i in 1..left.length-1 do
    diff = (left[i] - right[i-1]).abs
    min = [min, diff].min()
  end
  min
end