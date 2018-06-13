# Codility Lesson 16 - Dynamic Programming
# MinAbsSum
# Given array of integers, find the lowest absolute sum of elements.

def solution(a)
  a.map! {|i| i.abs }
  max = a.max
  sum = a.reduce(:+)
  dp = [0] + [-1] * sum

  count = [0] * (max + 1)
  a.each {|i| count[i] += 1 }

  for a in 1..max do
    if count[a] > 0
      for j in 0...sum do
        if dp[j] >= 0
          dp[j] = count[a]
        elsif j >= a and dp[j - a] > 0
          dp[j] = dp[j - a] - 1
        end
      end
    end
  end

  result = sum
  (sum / 2 + 1).times do |i|
    result = [result, sum - 2 * i].min if dp[i] == 1
  end

  result
end