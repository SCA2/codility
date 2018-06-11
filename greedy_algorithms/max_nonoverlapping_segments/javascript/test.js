const solution = require('./index');

test('finds maximal set of non-overlapping segments', () => {
  const a = [1,3,7,9,9];
  const b = [5,6,8,9,10];
  expect(solution(a, b)).toEqual(3)
});

test('finds maximal set of non-overlapping segments', () => {
  const a = [0, 0, 2, 8, 9];
  const b = [0, 1, 2, 10, 11];
  expect(solution(a, b)).toEqual(3)
});

test('finds maximal set of non-overlapping segments', () => {
  const a = [0, 0, 2, 4, 10];
  const b = [0, 1, 3, 6, 1000000000];
  expect(solution(a, b)).toEqual(4)
});

test('finds maximal set of non-overlapping segments', () => {
  const a = [0, 1, 3];
  const b = [0, 2, 3];
  expect(solution(a, b)).toEqual(3)
});

test('finds maximal set of non-overlapping segments', () => {
  const a = [];
  const b = [];
  expect(solution(a, b)).toEqual(0)
});