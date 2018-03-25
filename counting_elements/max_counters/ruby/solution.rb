# Codility Lesson 4 - Counting Elements
# MaxCounters
# Calculate the values of counters after applying all operations

def solution(n, a)
  counters = [0] * n
  max = 0
  base = max

  a.each do |c|
    if c <= n
      counters[c-1] = base if counters[c-1] < base
      counters[c-1] += 1
      max = [counters[c-1], max].max()
    elsif c == (n + 1)
      base = max
    end
  end

  counters.map { |c| c < base ? base : c }
end