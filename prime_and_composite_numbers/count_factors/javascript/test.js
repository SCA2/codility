const countFactors = require('./index').countFactors;

test('returns primes <= n', () => {
  expect(getPrimes(20)).toEqual([2,3,5,7,11,13,17,19]);
});

test('count factors of n', () => {
  expect(countFactors(1)).toEqual(1);
});

test('count factors of n', () => {
  expect(countFactors(24)).toEqual(8);
});

test('count factors of n', () => {
  expect(countFactors(51)).toEqual(4);
});

test('count factors of n', () => {
  expect(countFactors(16)).toEqual(5);
});

test('count factors of n', () => {
  expect(countFactors(100)).toEqual(9);
});

test('count factors of n', () => {
  expect(countFactors(2147483647)).toEqual(2);
});