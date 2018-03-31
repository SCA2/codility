# Codility Lesson 6 - Sorting
# NumberOfDiscIntersections
# Compute the number of intersections in a sequence of discs.

def solution(a)
  # Convert a into segments each with head and tail
  # Sort heads and tails arrays
  heads = a.each_with_index.reduce([]) { |s, e| s.push(e[1] - e[0]) }.sort
  tails = a.each_with_index.reduce([]) { |s, e| s.push(e[1] + e[0]) }.sort

  pairs = 0
  j = 0

  tails.each_with_index do |tail, i|
    # Eliminate heads greater than current tail
    j += 1 while j < a.length && heads[j] <= tail

    # Add remaining segments to pairs (minus current segment)
    pairs += j - i - 1
  end

  # Return -1 if pairs greater than 10,000,000 because Codility
  pairs > 10_000_000 ? -1 : pairs
end