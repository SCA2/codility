# Codility Lesson 8 - Leader
# EquiLeader
# Count the number of EquiLeader sequences.

def leader(a)
  candidate = nil
  count = 0
  a.each do |c|
    candidate = c if count == 0
    count = candidate == c ? count += 1 : count -= 1
  end
  count = a.count {|c| c == candidate }
  count * 2 > a.length ? [candidate, count] : [-1, 0]
end

def solution(a)
  n = a.length
  leader, leaders = leader(a)
  ldr_count = 0
  eq_count = 0
  a.each_with_index do |c, i|
    ldr_count += 1 if c == leader
    if ldr_count * 2 > (i + 1) && (leaders - ldr_count) * 2 > (n - i - 1)
      eq_count += 1
    end
  end
  eq_count
end