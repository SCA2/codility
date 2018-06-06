const solution = require('./index');

test('counts distinct slices in a', () => {
  const a = [3,4,5,5,2];
  const m = Math.max(...a);
  expect(solution(m, a)).toEqual(9);
});

test('counts distinct slices in a', () => {
  const a = [1,1,1,1];
  const m = Math.max(...a);
  expect(solution(m, a)).toEqual(4);
});

test('counts distinct slices in a', () => {
  const a = [1, 2, 3, 2, 1];
  const m = Math.max(...a);
  expect(solution(m, a)).toEqual(11);
});

test('counts distinct slices in a', () => {
  const a = [1, 0, 1, 0];
  const m = Math.max(...a);
  expect(solution(m, a)).toEqual(7);
});

test('counts distinct slices in a', () => {
  const a = [1,2,3,4];
  const m = Math.max(...a);
  expect(solution(m, a)).toEqual(10);
});
