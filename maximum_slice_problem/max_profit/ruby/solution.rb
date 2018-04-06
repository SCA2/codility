# Codility Lesson 9 - Maximum Slice Problem
# MaxProfit
# Given a log of stock prices compute the maximum possible earning.

def solution(a)
  min_price = 400000
  max_price = 0
  max_profit = 0
  a.each do |p|
    max_price = [p, max_price].max
    if p < min_price
      min_price = p
      max_price = p
    end
    max_profit = [max_profit, max_price - min_price].max
  end
  max_profit
end