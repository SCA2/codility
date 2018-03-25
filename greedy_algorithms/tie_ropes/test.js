const solution = require('./index');

test('returns maximum number of ropes of length >= k', () => {
  const a = [1,2,3,4,1,1,3];
  const k = 4;
  expect(solution(k, a)).toEqual(3);
});