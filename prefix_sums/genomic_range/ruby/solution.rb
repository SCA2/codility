# Codility Lesson 5 - Prefix Sums
# GenomicRangeQuery
# Find the minimal nucleotide from a range of sequence DNA.

def solution(s, p, q)
  values = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
  s = s.split('').map { |c| values[c] }

  a_map = s.reduce([-1]) { |a, c| c == 1 ? a.push(a.size - 1) : a.push(a[-1]) }[1..-1]
  c_map = s.reduce([-1]) { |a, c| c == 2 ? a.push(a.size - 1) : a.push(a[-1]) }[1..-1]
  g_map = s.reduce([-1]) { |a, c| c == 3 ? a.push(a.size - 1) : a.push(a[-1]) }[1..-1]
  t_map = s.reduce([-1]) { |a, c| c == 4 ? a.push(a.size - 1) : a.push(a[-1]) }[1..-1]

  p.zip(q).reduce([]) do |result, i|
    r = 5
    r = 4 if t_map[i[1]] > t_map[i[0]]
    r = 3 if g_map[i[1]] > g_map[i[0]]
    r = 2 if c_map[i[1]] > c_map[i[0]]
    r = 1 if a_map[i[1]] > a_map[i[0]]
    r = [r, s[i[0]], s[i[1]]].min()
    result.push(r) 
  end
end