const permcheck = require('./index');

test('it returns true if array is a permutation', () => {
  const a = [1,2,3,4,5];
  expect(permcheck(a)).toBe(true);
});

test('it returns true if array is a permutation', () => {
  const a = [1,2,4,5];
  expect(permcheck(a)).toBe(false);
});