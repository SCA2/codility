# Codility Lesson 10 - Prime and Composite Numbers
# Peaks
# Divide an array into the maximum number of same-sized blocks,
# each of which should contain an index P such that A[P - 1] < A[P] > A[P + 1].

def solution(a)
  # Detect the peaks
  peaks = (1..a.length-2).reduce([0]) do |p, i|
    a[i] > a[i-1] && a[i] > a[i+1] ? p.push(i) : p.push(p[-1])
  end
  peaks.push(peaks[-1])

  return 0 if peaks.length < 3

  # Generate possible block sizes
  blocks = {}
  (peaks.length**0.5).floor.downto(1) do |i|
    if peaks.length % i == 0
      blocks[i] = 1
      blocks[peaks.length / i] = 1
    end
  end
  blocks = blocks.keys

  # Test the peaks array against all theto block sizes
  for k in blocks do
    every_k = true
    (0...peaks.length).step(k) do |p|
      if peaks[p] == peaks[p+k-1] && p > 0 && peaks[p] == peaks[p-1]
        every_k = false
        break
      elsif peaks[p] == peaks[p+k-1]
        every_k = false
        break
      end
    end
    return peaks.length / k if every_k
  end

  return 0

end