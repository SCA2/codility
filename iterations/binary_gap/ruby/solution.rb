# Codility #1 Iterations
# BinaryGap
# Find longest sequence of zeros in binary representation of an integer

def solution(n)
  a = n.digits(2).reverse()
  max = 0
  count = 0
  for i in a do
    if i == 0
      count += 1
    elsif i == 1
      max = [max, count].max
      count = 0
    end
  end
  max
end
