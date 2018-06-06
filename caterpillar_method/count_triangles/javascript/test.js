const solution = require('./index');

test('counts number of triangles that can be made from a', () => {
  const a = [10,   2,   5,  1,    8,   12];
  expect(solution(a)).toEqual(4);
});