# Codility Lesson 12 - Euclidean Algorithm
# CommonPrimeDivisors
# Check whether two numbers have the same prime divisors.

# Greatest common denominator
def gcd(n, m)
  n % m == 0 ? m : gcd(m, n % m)
end

# Try to reduce n to greatest common denominator
def factor_gcd(n, g)
  m = 0
  while((m = gcd(n, g)) != 1) do
    n /= m
  end
  n
end

# Return 1 if m and n can be reduced to greatest common denominator
def common_primes(m, n)
  gcd = gcd(m, n)
  if factor_gcd(m, gcd) == 1 && factor_gcd(n, gcd) == 1
    return 1
  else
    return 0
  end
end

# Test for each pair of numbers
def solution(a, b)
  a.zip(b).reduce(0) { |count, i| count += common_primes(i[0], i[1]) }
end