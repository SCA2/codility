const maxProfit = require('./index');

test('finds maximum profit', () => {
  const a = [23171, 21011, 21123, 21366, 21013, 21367];
  expect(maxProfit(a)).toEqual(356);
});

test('finds maximum profit', () => {
  const a = [23171, 23171, 23171, 23171, 23171, 23171];
  expect(maxProfit(a)).toEqual(0);
});

test('finds maximum profit', () => {
  const a = [20000, 19000, 18000, 17000, 16000, 15000];
  expect(maxProfit(a)).toEqual(0);
});

test('finds maximum profit', () => {
  const a = [];
  expect(maxProfit(a)).toEqual(0);
});

