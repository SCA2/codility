const countNonDivisors = require('./index').countNonDivisors;

test('it counts non divisors for each array element', () => {
  const a = [3,1,2,3,6];
  expect(countNonDivisors(a)).toEqual([2,4,3,2,0]);
})