const sieve = require('./index').sieve;
const semiPrimes = require('./index').semiPrimes;

test('finds list of primes LTEQ n', () => {
  expect(sieve(23)).toEqual([2,3,5,7,11,13,17,19,23]);
});

test('finds list of primes LTEQ n', () => {
  expect(sieve(2)).toEqual([2]);
});

test('finds list of primes LTEQ n', () => {
  expect(sieve(1)).toEqual([]);
});

test('it counts semiprimes', () => {
  const n = 26;
  const p = [1,4,16];
  const q = [26,10,20];
  expect(semiPrimes(n, p, q)).toEqual([10,4,0]);
})