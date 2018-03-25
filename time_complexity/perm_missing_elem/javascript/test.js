const missingElement = require('./index');

test('it finds missing element in array', () => {
  const a = [1,2,4,5,6];
  expect(missingElement(a, a.length + 1)).toEqual(3);
});

test('it finds missing element in array', () => {
  const a = [1];
  expect(missingElement(a, a.length + 1)).toEqual(2);
});