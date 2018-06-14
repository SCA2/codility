# Codility Lesson 16 - Dynamic Programming
# MinAbsSum
# Given array of integers, find the lowest absolute sum of elements.

def solution(a)
  a.map! { |i| i.abs }
  max = a.max || 0
  sum = a.reduce(:+) || 0

  count = [0] * (max + 1)
  a.each { |i| count[i] += 1 }

  dp = [0] + [-1] * sum
  for i in 1..max do
    next if count[i] == 0
    sum.times do |j|
      if dp[j] >= 0
        dp[j] = count[i]
      elsif j >= i and dp[j - i] > 0
        dp[j] = dp[j - i] - 1
      end
    end
  end

  result = sum
  (sum / 2 + 1).times do |i|
    result = [result, sum - 2 * i].min if dp[i] >= 0
  end
  return result
end