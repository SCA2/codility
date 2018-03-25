const balancePoint = require('./index.js');

test('it finds minimum balance difference of array', () => {
  const a = [3,1,2,4,3];
  expect(balancePoint(a)).toEqual(1);
});

test('it finds minimum balance difference of array', () => {
  const a = [-1,1,-1,1];
  expect(balancePoint(a)).toEqual(0);
})