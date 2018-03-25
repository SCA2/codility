const fibonacci = require('./index').fibonacci;
const solution = require('./index').solution;

test('returns fibonacci number n', () => {
  expect(fibonacci(13)).toEqual([1,2,3,5,8,13]);
});

test('returns fibonacci number n', () => {
  expect(fibonacci(15)).toEqual([1,2,3,5,8,13]);
});

test('find minimum number of jumps', () => {
  const a = [0,0,0,1,1,0,1,0,0,0,0];
  expect(solution(a)).toEqual(3);
});

test('find minimum number of jumps', () => {
  const a = [0,0,0,1,1,1,1,0,0,0,0];
  expect(solution(a)).toEqual(3);
});

test('find minimum number of jumps', () => {
  const a = [1];
  expect(solution(a)).toEqual(1);
});

test('find minimum number of jumps', () => {
  const a = [1,1,1,1,1,1,1];
  expect(solution(a)).toEqual(1);
})