const countDiv = require('./index');

test('compute number of integers divisible by k in range a..b', () => {
  expect(countDiv(6,11,2)).toEqual(3);
});

test('compute number of integers divisible by k in range a..b', () => {
  expect(countDiv(5,11,3)).toEqual(2);
});