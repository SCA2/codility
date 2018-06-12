const solution = require('./index');

test('finds the lowest absolute sum of a', () => {
  const a = [];
  expect(solution(a)).toEqual(0);
});

test('finds the lowest absolute sum of a', () => {
  const a = [10];
  expect(solution(a)).toEqual(10);
});

test('finds the lowest absolute sum of a', () => {
  const a = [2, 4, 1];
  expect(solution(a)).toEqual(1);
});

test('finds the lowest absolute sum of a', () => {
  const a = [2, 2, 1];
  expect(solution(a)).toEqual(1);
});

test('finds the lowest absolute sum of a', () => {
  const a = [1, 5, 2, -2];
  expect(solution(a)).toEqual(0);
});