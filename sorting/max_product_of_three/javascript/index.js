const maxProductOfThree = array => {
  const values = array.sort((a,b) => (a - b));
  let x = values[values.length-1];
  let y = values[values.length-2];
  let z = values[values.length-3];
  let a = x*y*z;
  y = values[0];
  z = values[1];
  let b = x*y*z;
  return Math.max(a, b);
};

module.exports = maxProductOfThree;