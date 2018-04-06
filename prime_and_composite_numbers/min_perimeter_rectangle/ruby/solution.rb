# Codility Lesson 10 - Prime and Composite Numbers
# MinPerimeterRectangle
# Find the minimal perimeter of any rectangle whose area equals N

def solution(n)
  r = (n**0.5).floor
  (1..r).reduce(Float::INFINITY) do |perimeter, h|
    n % h == 0 ? [perimeter, 2 * (h + n / h)].min : perimeter
  end
end