const maxCounters = require('./index');

test('it calculates counters correctly', () => {
  const a = [3,4,4,6,1,4,4];
  expect(maxCounters(5, a)).toEqual([3,2,2,4,2]);
})