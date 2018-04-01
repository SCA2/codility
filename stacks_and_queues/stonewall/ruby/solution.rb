# Codility Lesson 7 - Stacks and Queues
# StoneWall
# Cover "Manhattan skyline" using the minimum number of rectangles.

def solution(a)
  height = [0]
  block_count = 0
  a.each do |h|
    height.pop while h < height[-1]
    if h > height[-1]
      height.push(h)
      block_count += 1
    end
  end
  block_count
end