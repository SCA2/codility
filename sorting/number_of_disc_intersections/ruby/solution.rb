# Codility Lesson 6 - Sorting
# NumberOfDiscIntersections
# Compute the number of intersections in a sequence of discs.

def solution(a)
  # Convert a into segments each with head and tail
  # Sort heads and tails arrays
  heads = a.each_with_index.reduce([]) { |s, e| s.push(e[1] - e[0]) }.sort
  tails = a.each_with_index.reduce([]) { |s, e| s.push(e[1] + e[0]) }.sort

  pairs = 0
  head_index = 0

  tails.each_with_index do |tail, tail_index|
    # Find first head greater than current tail
    while head_index < heads.size && heads[head_index] <= tail do
      head_index += 1
    end

    # Add remaining segments to pairs (minus current segment)
    pairs += head_index - tail_index - 1
  end

  # Return -1 if pairs greater than 10,000,000 because Codility
  pairs > 10_000_000 ? -1 : pairs
end