const frogRiver = require('./index');

test('it determines earliest index when path is complete', () => {
  const a = [1,3,1,4,2,3,5,4]
  expect(frogRiver(5, a)).toEqual(6);
})