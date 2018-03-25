const fibonacci = require('./index').fibonacci;
const solution = require('./index').solution;

test('returns fibonacci number n', () => {
  expect(fibonacci(10)).toEqual([0,1,1,2,3,5,8,13,21,34,55]);
});

test('calculate paths modulo 2**B[i]', () => {
  const a = [4,4,5,5,1];
  const b = [3,2,4,3,1];
  expect(solution(a,b)).toEqual([5, 1, 8, 0, 1])
});