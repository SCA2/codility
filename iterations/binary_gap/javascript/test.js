const countZeros = require('./index');

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 1041;
  expect(countZeros(n)).toEqual(5);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 5;
  expect(countZeros(n)).toEqual(1);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 6;
  expect(countZeros(n)).toEqual(0);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 328;
  expect(countZeros(n)).toEqual(2);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 9;
  expect(countZeros(n)).toEqual(2);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 11;
  expect(countZeros(n)).toEqual(1);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 19;
  expect(countZeros(n)).toEqual(2);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 42;
  expect(countZeros(n)).toEqual(1);
});

test('counts longest sequence of zeros in binary representation of n', () => {
  const n = 1162;
  expect(countZeros(n)).toEqual(3);
});
