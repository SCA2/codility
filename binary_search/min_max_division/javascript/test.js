const solution = require('./index');

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [2,1,5,1,2,2,2];
  const blocks = 3;
  const max = 5;
  expect(solution(blocks, max, a)).toEqual(6);
});

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [2,1,5,1,2,2,2];
  const blocks = 7;
  const max = 5;
  expect(solution(blocks, max, a)).toEqual(5);
});

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [2,1,5,1,2,2,2];
  const blocks = 1;
  const max = 5;
  expect(solution(blocks, max, a)).toEqual(15);
});

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [5, 3];
  const blocks = 3;
  const max = 5;
  expect(solution(blocks, max, a)).toEqual(5);
});

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [4, 1, 2, 7];
  const blocks = 2;
  const max = 7;
  expect(solution(blocks, max, a)).toEqual(7);
});

test('partition array so as to minimize sum of maximum partition', () => {
  const a = [5, 2, 3, 4, 6];
  const blocks = 3;
  const max = 6;
  expect(solution(blocks, max, a)).toEqual(7);
});