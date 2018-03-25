const triangle = require('./index');

test('it finds a triangle in a set of edges', () => {
  const a = [10,2,5,1,8,20];
  expect(triangle(a)).toEqual(1);
})