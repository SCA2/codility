# Codility Lesson 13 - Fibonacci Numbers
# Ladder
# Count the number of different ways of climbing to the top of a ladder.

def fib_array(n)
  fibs = [1, 1]
  (n-2).times do
    fibs.push(fibs[-2] + fibs[-1])
  end
  fibs
end

def solution(a, b)
  fibs = fib_array(a.max+1)
  a.zip(b).map {|e| fibs[e[0]] % 2**e[1] }
end