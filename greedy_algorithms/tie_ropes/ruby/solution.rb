# Codility Lesson 16 - Greedy Algorithms
# TieRopes
# Tie adjacent ropes to achieve the maximum number of ropes of length >= K.

def solution(k, a)
  count, current_length = 0, 0
  a.each do |r|
    current_length += r 
    if current_length >= k
      count += 1
      current_length = 0
    end
  end
  count
end