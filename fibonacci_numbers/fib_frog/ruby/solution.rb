# Codility Lesson 13 - Fibonacci Numbers
# FibFrog
# Count the minimum number of jumps required for a frog to get
# to the other side of a river.

# We're only allowed to jump a fibonacci number of positions
def fib_jumps(n)
  fibs = [1, 1]
  while fibs[-2] + fibs[-1] <= n do
    fibs.push(fibs[-2] + fibs[-1])
  end
  fibs[1..-1]
end

def solution(a)
  bank = a.length
  jumps = fib_jumps(bank + 1)
  queue = [[-1, 0]]
  visited = [1000] * bank

  # BFS possible jumps to find shortest path
  while !queue.empty? do
    node = queue.shift
    position = node[0]
    jump_count = node[1]
    jumps.each do |j|
      if position + j == bank
        return jump_count + 1
      elsif a[position + j] == 1 && jump_count + 1 < visited[position + j]
        visited[position + j] = jump_count + 1
        queue.push([position + j, jump_count + 1])
      end
    end
  end

  return -1
end