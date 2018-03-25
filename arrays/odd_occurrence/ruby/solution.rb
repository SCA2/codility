# Codility Lesson 2 - Arrays
# OddOccurrencesInArray
# Find value that occurs in odd number of elements.

def solution(a)
  a
  .reduce({}) { |h, i| h[i] ? h[i] += 1 : h[i] = 1; h }
  .find { |i| i[1] % 2 == 1 }[0]
end
