const dominator = require('./index');

test('find an index of the most common value in array', () => {
  const a = [3,4,3,2,3,-1,3,3];
  expect(dominator(a)).toEqual(0);
});

test('find an index of the most common value in array', () => {
  const a = [2,2,1,1];
  expect(dominator(a)).toEqual(-1);
});

test('returns dominator of array', () => {
  const a = [1];
  expect(dominator(a)).toEqual(0);
});

test('returns dominator of array', () => {
  const a = [1,1,1,2,2,2];
  expect(dominator(a)).toEqual(-1);
});

test('returns dominator of array', () => {
  const a = [1,2,1,2,1,2,1,1,3];
  expect(dominator(a)).toEqual(0);
});

