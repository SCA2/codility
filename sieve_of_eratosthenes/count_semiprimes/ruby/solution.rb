# Codility Lesson 11 - Sieve of Eratosthenes
# CountSemiprimes
# Count the semiprime numbers in the given range [a..b]

def solution(n, p, q)
  # Sieve out the primes. We only need up to root n/2.
  primes = *(2..n)
  (2..(n/2)**0.5).each do |i|
    (2*i..n).step(i) do |j|
      primes[j-2] = 0
    end
  end

  # If it's not a 0, it's a prime
  primes = primes.reject { |e| e == 0 }

  # Make a map of the semiprimes
  semiprimes = [0] * (n + 1)
  (0...primes.length).each do |i|
    (i...primes.length).each do |j|
      s = primes[i] * primes[j]
      break if s > n
      semiprimes[s] = 1
    end
  end

  # Calculate running total of semiprimes
  (1...semiprimes.length).each do |i|
    semiprimes[i] += semiprimes[i - 1]
  end

  # Query map for number of semiprimes between indices
  p.zip(q).reduce([]) do |sum, e|
    sum.push(semiprimes[e[1]] - semiprimes[e[0]-1])
  end
end