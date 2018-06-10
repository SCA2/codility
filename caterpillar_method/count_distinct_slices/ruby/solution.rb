# Codility Lesson 15 - Caterpillar Method
# CountDistinctSlices
# Count the number of distinct slices (containing only unique numbers).

def solution(m, a)
  tail, count, q = 0, 0, 0
  used = [-1] * (m + 1)
  a.each_with_index do |n, head|
    if used[n] == -1
      used[n] = head
    else
      new_tail = used[n] + 1
      q = head - tail
      r = head - new_tail
      count += q*(q+1)/2 - r*(r+1)/2
      i = tail
      used[a[i]] = -1 while i += 1 and i < new_tail
      used[n] = head
      tail = new_tail
      # puts "used: #{used}, q: #{q}, r: #{r}"
    end
  end
  q = a.length - tail
  count += q*(q+1)/2
  [count, 1000000000].min
end