# Codility Lesson 10 - Prime and Composite Numbers
# Flags
# Find the maximum number of flags that can be set on mountain peaks.

def solution(a)
  peaks = (1..a.length-2).reduce([]) do |p, i|
    a[i] > a[i-1] && a[i] > a[i+1] ? p.push(i) : p
  end

  return peaks.length if peaks.length < 3

  min_distance = ((peaks[-1] - peaks[0])**0.5).floor + 1

  max_flags = 1
  min_distance.downto(1) do |d|
    flags = [peaks[0]]
    peaks.each do |p|
      flags.push(p) if p - flags[-1] >= d
      break if flags.length >= d
    end
    max_flags = [max_flags, flags.length].max
  end
  return  max_flags
end