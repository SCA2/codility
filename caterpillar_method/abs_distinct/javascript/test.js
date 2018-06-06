const solution = require('./index');

test('count number of distinct absolute values in a', () => {
  const a = [-5,-3,-1, 0, 3, 6];
  expect(solution(a)).toEqual(5);
});
