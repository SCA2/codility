const peaks = require('./index');

test('find maximum number of peak blocks in a', () => {
  const a = [0];
  expect(peaks(a)).toEqual(0);
});

test('find maximum number of peak blocks in a', () => {
  const a = [0,1,0];
  expect(peaks(a)).toEqual(1);
});

test('find maximum number of peak blocks in a', () => {
  const a = [0,1,0,1];
  expect(peaks(a)).toEqual(1);
});

test('find maximum number of peak blocks in a', () => {
  const a = [0,1,0,1,0];
  expect(peaks(a)).toEqual(1);
});

test('find maximum number of peak blocks in a', () => {
  const a = [0,1,0,1,0,1,0,1,0];
  expect(peaks(a)).toEqual(3);
});

test('find maximum number of peak blocks in a', () => {
  const a = [1,2,3,4,3,4,1,2,3,4,6,2];
  expect(peaks(a)).toEqual(3);
});
