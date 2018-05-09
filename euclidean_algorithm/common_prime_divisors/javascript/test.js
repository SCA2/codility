const factorGCD = require('./index').factorGCD;
const cpd = require('./index').cpd;
const solution = require('./index').solution;

test('finds remainder of n and gcd', () => {
  expect(factorGCD(12, 6)).toEqual(1);
});

test('finds remainder of n and gcd', () => {
  expect(factorGCD(14, 6)).toEqual(7);
});

test('finds common prime divisors of n and m', () => {
  expect(cpd(12, 18)).toEqual(1);
});

test('finds common prime divisors of n and m', () => {
  expect(cpd(10, 30)).toEqual(0);
});

test('tests array for common prime divisors', () => {
  const a = [15,10,3];
  const b = [75,30,5];
  expect(solution(a,b)).toEqual(1);
});

test('tests array for common prime divisors', () => {
  const a = [2,1,2];
  const b = [1,2,2];
  expect(solution(a,b)).toEqual(1);
});

test('tests array for common prime divisors', () => {
  const a = [1];
  const b = [1];
  expect(solution(a,b)).toEqual(1);
});

test('tests array for common prime divisors', () => {
  const a = [3, 9, 20, 11];
  const b = [9, 81, 5, 13];
  expect(solution(a,b)).toEqual(2);
});
