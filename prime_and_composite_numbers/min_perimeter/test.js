const minPerimeter = require('./index');

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(30)).toEqual(22)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(101)).toEqual(204)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(1234)).toEqual(1238)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(4564320)).toEqual(8552)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(15486451)).toEqual(30972904)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(982451653)).toEqual(1964903308)
});

test('finds minimum perimeter of rectangle with area a', () => {
  expect(minPerimeter(1000000000)).toEqual(126500)
});
