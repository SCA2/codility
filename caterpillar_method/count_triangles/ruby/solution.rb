# Codility Lesson 15 - Caterpillar Method
# CountTriangles
# Count the number of triangles that can be built from a given set of edges.

def solution(a)
  a.sort!
  triplets = 0
  a.each_with_index do |p, i|
    k = i + 2
    a[i+1..-1].each_with_index do |q, j|
      k += 1 while k < a.length && p + q > a[k]
      triplets += k - j - i - 2
    end
  end
  triplets
end
