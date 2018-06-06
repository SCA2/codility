# Codility Lesson 14 - Binary Search Algorithm
# MinMaxDivision
# Divide array A into K blocks and minimize the largest sum of any block.

def count_blocks(a, target)
  a[1..-1].reduce([a[0], 1]) do |sum, e|
    if sum[0] + e > target
      sum[0] = e
      sum[1] += 1
    else
      sum[0] += e
    end
    sum
  end[1]
end

def solution(k, m, a)
  minSum = a.max
  maxSum = a.reduce(:+)
  result = 0

  return minSum if k == a.length
  return maxSum if k == 1

  while maxSum >= minSum do
    midSum = (maxSum + minSum) / 2
    blocks = count_blocks(a, midSum)
    if blocks <= k          # midSum is too big
      maxSum = midSum - 1;
      result = midSum;
    else                    # midSum is too small
      minSum = midSum + 1;
    end
  end
  return result;
end