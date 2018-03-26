# Codility Lesson 5 - Prefix Sums
# MinAvgTwoSlice
# Find the minimal average of any slice containing at least two elements.

def solution(a)
  head = 1
  tail = 0
  minIndex = tail
  minAvg = Float::INFINITY
  nextHeadAvg = minAvg
  nextTailAvg = minAvg
  sums = a.reduce([0]) {|sum, e| sum.push(sum[-1] + e) }[1..-1]

  while tail < a.length - 1 do
    span = head - tail + 1
    sum = sums[head] - sums[tail] + a[tail]

    nextHeadAvg = (sum + a[head + 1]).fdiv(span + 1) if head < a.length - 1
    nextTailAvg = (sum - a[tail]).fdiv(span - 1) if tail < head - 1

    if nextHeadAvg < minAvg
      head += 1
      minAvg = nextHeadAvg
      minIndex = tail
    elsif nextTailAvg < minAvg
      tail += 1
      minAvg = nextTailAvg
      minIndex = tail 
    else
      tail += 1
    end
    head += 1 if head == tail
  end
  # puts "tail: #{tail}, head: #{head}, minAvg: #{minAvg}, minIndex: #{minIndex}"
  return minIndex
end