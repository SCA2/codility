const maxDoubleSliceSum = require('./index');

test('finds maximum double slice sum', () => {
  const a = [1,2,3,4,5,6,7];
  expect(maxDoubleSliceSum(a)).toEqual(18);
});

test('finds maximum double slice sum', () => {
  const a = [3, 2, 6, -1, 4, 5, -1, 2];
  expect(maxDoubleSliceSum(a)).toEqual(17);
});

test('finds maximum double slice sum', () => {
  const a = [0, 10, -5, -2, 0];
  expect(maxDoubleSliceSum(a)).toEqual(10);
});

test('finds maximum double slice sum', () => {
  const a = [6, 1, 5, 6, 4, 2, 9, 4];
  expect(maxDoubleSliceSum(a)).toEqual(26);
});

test('finds maximum double slice sum', () => {
  const a = [-4, -5, -1, -5, -7, -19, -11];
  expect(maxDoubleSliceSum(a)).toEqual(0);
});
