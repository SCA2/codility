const maxSliceSum = require('./index');

test('finds slice with maximum sum', () => {
  const a = [3,2,-6,4,0];
  expect(maxSliceSum(a)).toEqual(5);  
});

test('finds slice with maximum sum', () => {
  const a = [-1,-1,-1,-1,-1];
  expect(maxSliceSum(a)).toEqual(-1);  
});

test('finds slice with maximum sum', () => {
  const a = [-1, 1];
  expect(maxSliceSum(a)).toEqual(1);  
});

test('finds slice with maximum sum', () => {
  const a = [-10];
  expect(maxSliceSum(a)).toEqual(-10);  
});

test('finds slice with maximum sum', () => {
  const a = [-2, 1];
  expect(maxSliceSum(a)).toEqual(1);  
});

test('finds slice with maximum sum', () => {
  const a = [1, -2, 3];
  expect(maxSliceSum(a)).toEqual(3);  
});
