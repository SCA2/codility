const findOddOccurrence = require('./index.js');

test('finds odd occurrence in array', () => {
  const a = [9,3,9,3,9,7,9];
  expect(findOddOccurrence(a)).toEqual(7);
})