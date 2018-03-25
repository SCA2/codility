const missingInteger = require('./index');

test('it finds smallest positive integer not in array', () => {
  const a = [1,3,6,4,1,2];
  expect(missingInteger(a)).toEqual(5);
});

test('it finds smallest positive integer not in array', () => {
  const a = [1,3,2];
  expect(missingInteger(a)).toEqual(4);
});

test('it finds smallest positive integer not in array', () => {
  const a = [-1,-3];
  expect(missingInteger(a)).toEqual(1);
});

test('it finds smallest positive integer not in array', () => {
  const a = [-1,-3,-79,-32,15,0,50];
  expect(missingInteger(a)).toEqual(1);
});