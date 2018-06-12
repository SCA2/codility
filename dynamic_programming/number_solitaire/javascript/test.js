const solution = require('./index');

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [1, -2, 0, 9, -1, -2];
  expect(solution(a)).toEqual(8)
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [10000, 1];
  expect(solution(a)).toEqual(10001);
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [1, 1, 1];
  expect(solution(a)).toEqual(3);
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [-1, -10, -1];
  expect(solution(a)).toEqual(-2);
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [-3, -4, -3, 2, -7, -1];
  expect(solution(a)).toEqual(-2);
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [0, -4, -5, -2, -7, -9, -3, -10];
  expect(solution(a)).toEqual(-12);
});

test('finds max sum of array moving up to 6 positions at once', () => {
  const a = [1, -2, 4, 3, -1, -3, -7, 4, -9];
  expect(solution(a)).toEqual(3);
});
