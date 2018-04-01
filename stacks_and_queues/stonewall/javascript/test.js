const stonewall = require('./index');

test('it calculates minimum blocks to build a wall', () => {
  const a = [8,8,5,7,9,8,7,4,8];
  expect(stonewall(a)).toEqual(7);
});

test('it calculates minimum blocks to build a wall', () => {
  const a = [5,5,5,5,6];
  expect(stonewall(a)).toEqual(2);
});

test('it calculates minimum blocks to build a wall', () => {
  const a = [0,1,0,1,2];
  expect(stonewall(a)).toEqual(3);
});