const equileader = require('./index').equileader;

test('returns number of equileaders', () => {
  const a = [4,3,4,4,4,2];
  expect(equileader(a)).toEqual(2);
});

test('returns number of equileaders', () => {
  const a = [0];
  expect(equileader(a)).toEqual(0);
});

test('returns number of equileaders', () => {
  const a = [0,0];
  expect(equileader(a)).toEqual(1);
});

test('returns number of equileaders', () => {
  const a = [4, 4, 2, 5, 3, 4, 4, 4];
  expect(equileader(a)).toEqual(3);
});

