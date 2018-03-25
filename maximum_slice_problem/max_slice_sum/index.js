const maxSliceSum = array => {
  let maxToHere = array[0];
  let max = array[0];
  for(c of array.slice(1)) {
    maxToHere = Math.max(c, maxToHere + c);
    max = Math.max(maxToHere, max);
    // console.log(maxToHere, max);
  }
  return max;
};

module.exports = maxSliceSum;