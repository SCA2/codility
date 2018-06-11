# Codility Lesson 16 - Greedy Algorithms
# MaxNonoverlappingSegments
# Find a maximal set of non-overlapping segments.

def solution(a, b)
  segments = a.zip(b)
  return 0 if segments.length == 0

  count, tail = 0, -1
  segments.each do |s|
    if s[0] > tail
      count += 1
      tail = s[1]
    end
  end

  count
end