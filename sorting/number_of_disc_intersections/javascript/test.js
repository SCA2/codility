const binarySearch = require('./index').binarySearch;
const discIntersections = require('./index').discIntersections;

test('it finds index by binary search', () => {
  const a = [ 1, 1, 3, 3, 5 ];
  expect(binarySearch(a, 3.5, (n, h) => n < h)).toEqual(4);
});

test('it finds index by binary search', () => {
  const a = [1, 4, 4, 5, 6, 8];
  expect(binarySearch(a, 5, (n, h) => n < h)).toEqual(3);
});

test('it finds index by binary search', () => {
  const a = [1,2,3,4,5,6,7,8,9];
  expect(binarySearch(a, 5, (n, h) => n < h)).toEqual(4);
});

test('it finds index by binary search', () => {
  const a = [1,2,3,4,5,6,7,8,9,10];
  expect(binarySearch(a, 5, (n, h) => n < h)).toEqual(4);
});

test('it counts number of disc intersections', () => {
  const a = [1,5,2,1,4,0];
  expect(discIntersections(a)).toEqual(11);
});

test('it counts number of disc intersections', () => {
  const a = [1, 2147483647, 0];
  expect(discIntersections(a)).toEqual(2);
});

test('it counts number of disc intersections', () => {
  const a = [1, 0, 1, 0, 1];
  expect(discIntersections(a)).toEqual(6);
});

