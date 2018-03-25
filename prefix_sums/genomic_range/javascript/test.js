const genomicRangeQuery = require('./index');

test('finds minimum of AGCT in range', () => {
  const s = 'CAGCCTA';
  const p = [2,5,0];
  const q = [4,5,6];
  expect(genomicRangeQuery(s, p, q)).toEqual([2,4,1]);
})