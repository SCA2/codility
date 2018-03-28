const countDistinct = require('./index');

test('counts distinct values in an array', () => {
  const a = [1,2,3,4,5,6,7,8,9,9,9];
  expect(countDistinct(a)).toEqual(9);
});

test('counts distinct values in an array', () => {
  const a = [];
  expect(countDistinct(a)).toEqual(0);
});