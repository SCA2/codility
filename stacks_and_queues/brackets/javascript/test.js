const brackets = require('./index');

test('it returns 1 if properly bracketed', () => {
  const s = '';
  expect(brackets(s)).toEqual(1);
});

test('it returns 1 if properly bracketed', () => {
  const s = '{[()()]}';
  expect(brackets(s)).toEqual(1);
});

test('it returns 0 if not properly bracketed', () => {
  const s = '{[()(])}';
  expect(brackets(s)).toEqual(0);
});
