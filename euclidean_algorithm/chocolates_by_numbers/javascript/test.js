const gcd = require('./index').gcd;
const lcm = require('./index').lcm;
const cbn = require('./index').cbn;

test('find greatest commond denominator', () => {
  expect(gcd(10, 4)).toEqual(2);
});

test('find least common multiple', () => {
  expect(lcm(10, 4)).toEqual(20);
});

test('find number of chocolates eaten', () => {
  expect(cbn(10, 4)).toEqual(5);
});