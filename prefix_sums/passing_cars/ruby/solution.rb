# Codility Lesson 5 - Prefix Sums
# PassingCars
# Count the number of passing cars on the road.

# 0 represents a car travelling east
# 1 represents a car travelling west

def solution(a)
  zeroes = 0
  passes = 0
  a.each do |c|
    zeroes += 1 if c == 0
    passes += zeroes if c == 1
    return -1 if passes > 1000000000
  end
  passes
end