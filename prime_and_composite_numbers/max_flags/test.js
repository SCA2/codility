const maxFlags = require('./index');

test('calculate max number of flags on peaks', () => {
  const a = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2];
  expect(maxFlags(a)).toEqual(3);
});

test('calculate max number of flags on peaks', () => {
  const a = [0,1,0,1,0];
  expect(maxFlags(a)).toEqual(2);
});

test('calculate max number of flags on peaks', () => {
  const a = [0,1,0,1,0,1,0,1,0,1,0];
  expect(maxFlags(a)).toEqual(3);
});

test('calculate max number of flags on peaks', () => {
  const a = [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0];
  expect(maxFlags(a)).toEqual(4);
});

test('calculate max number of flags on peaks', () => {
  const a = [0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,0];
  expect(maxFlags(a)).toEqual(3);
});

test('calculate max number of flags on peaks', () => {
  const a = [1];
  expect(maxFlags(a)).toEqual(0);
});
