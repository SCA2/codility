# Codility Lesson 11 - Sieve of Eratosthenes
# CountNonDivisible
# Calculate the number of elements of an array that are not divisors
# of each element.

def solution(a)
  a_max = a.max

  # Get frequency of each possible factor
  frequency = a.reduce([]) { |f, e| f[e] = f[e] ? f[e] += 1 : 1; f }

  # Initialize value-indexed quotients array with possible factors
  quotients = [0] * (a_max + 1)
  a.each { |e| quotients[e] = e }

  
  # For each quotient, test for multiples (factors) and save
  factors = {}
  (1..a_max).each do |i|
    next if quotients[i] == 0
    (i..a_max).step(i) do |j|
      if quotients[j] != 0
        factors[j] ? factors[j].push(i) : factors[j] = [i]
      end
    end
  end

  # For each factor, number of non-divisors = array length - number of divisors
  non_divisors = factors.reduce([]) do |nds, f|
    divisors = f[1].reduce(0) { |sum, i| sum + frequency[i] }
    nds[f[0]] = a.length - divisors
    nds
  end

  # Lookup number of non-divisors for each element of a
  a.map { |i| non_divisors[i] }

end
