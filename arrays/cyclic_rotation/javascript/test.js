const solution = require('./index.js');

test('rotates an array', () => {
  const a = [1,2,3,4,5,6,7,8,9];
  expect(solution(a, a.length, 3)).toEqual([7,8,9,1,2,3,4,5,6]);
});

test('rotates an array', () => {
  const a = [3,8,9,7,6];
  expect(solution(a, a.length, 3)).toEqual([9,7,6,3,8]);
});

test('rotates an array', () => {
  const a = [];
  expect(solution(a, a.length, 3)).toEqual([]);
});