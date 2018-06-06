const solution = require('./index');

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [1, 4, -3];
  expect(solution(a)).toEqual(1);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [1, 7, -3, -7];
  expect(solution(a)).toEqual(0);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [1, 7, -3, -6, 0, 0];
  expect(solution(a)).toEqual(0);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [1, 2, 3];
  expect(solution(a)).toEqual(2);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [-1, -2, -3];
  expect(solution(a)).toEqual(2);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [-8, 4, 5, -10, 3];
  expect(solution(a)).toEqual(3);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [0];
  expect(solution(a)).toEqual(0);
});

test('finds the minimum absolute sum of two elements of a', () => {
  const a = [1000000000, -1000000000];
  expect(solution(a)).toEqual(0);
});


