# Codility Lesson 4 - Counting Elements
# MissingInteger
# Find the smallest positive integer that does not occur in a given sequence.

def solution(a)
  sequence = a.reduce([0]) { |array, c| array[c] = c if c > 0; array }

  sequence.each_with_index do |c, i|
    return i if c == nil
  end

  sequence.length
end