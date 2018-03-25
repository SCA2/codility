const passingCars = require('./index');

test('calculate number of passing cars', () => {
  const a = [0,1,0,1,1];
  expect(passingCars(a)).toEqual(5);
})