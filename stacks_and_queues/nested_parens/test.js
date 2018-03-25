const nested = require('./index');

test('returns 1 if parenthesis are properly nested', () => {
  const s = '(()(())())';
  expect(nested(s)).toEqual(1);
});

test('returns 0 if parenthesis not properly nested', () => {
  const s = '()(())())';
  expect(nested(s)).toEqual(0);
});