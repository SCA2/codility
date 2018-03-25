const fish = require('./index');

test('calculate surviving fish', () => {
  const a = [4,3,2,1,5];
  const b = [0,1,0,0,0];
  expect(fish(a,b)).toEqual(2);
});

test('calculate surviving fish', () => {
  const a = [0,1];
  const b = [1,1];
  expect(fish(a,b)).toEqual(2);
});
