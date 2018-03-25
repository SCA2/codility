const minAvgTwoSlice = require('./index');

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [4,2,2,5,1,5,8];
  expect(minAvgTwoSlice(a)).toEqual(1);
});

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [1,1,1,1,1];
  expect(minAvgTwoSlice(a)).toEqual(0);
});

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [-1,-1,-1,-1,-1];
  expect(minAvgTwoSlice(a)).toEqual(0);
});

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [1,-1,1,-1,1,-1];
  expect(minAvgTwoSlice(a)).toEqual(1);
});

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [0,0,0,0,0,-10];
  expect(minAvgTwoSlice(a)).toEqual(4);
});

test('finds minimum avg of any slice of at least 2 elements', () => {
  const a = [-3,-5,-8,-4,-10];
  expect(minAvgTwoSlice(a)).toEqual(2);
});