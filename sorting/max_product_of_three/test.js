const maxProductOfThree = require('./index');

test('it finds maximum product of 3 values in array', () => {
  const a = [-3,1,2,-2,5,6];
  expect(maxProductOfThree(a)).toEqual(60);
});

test('it finds maximum product of 3 values in array', () => {
  const a = [-5, 5, -5, 4];
  expect(maxProductOfThree(a)).toEqual(125);
});