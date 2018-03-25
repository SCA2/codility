const maxDoubleSliceSum = array => {

  let xMax = [...new Array(array.length).keys()].map(e => 0);
  let xMaxToHere = 0;
  for(let i = 1; i < array.length - 2; i++) {
    xMaxToHere = Math.max(0, xMaxToHere + array[i]);
    xMax[i] = xMaxToHere;
  }

  let zMax = [...new Array(array.length).keys()].map(e => 0);
  let zMaxToHere = 0;
  for(let i = array.length - 2; i > 0; i--) {
    zMaxToHere = Math.max(0, zMaxToHere + array[i]);
    zMax[i] = zMaxToHere;
  }
  // console.log(array, xMax, zMax);

  let max = Number.MIN_SAFE_INTEGER;
  for(let y = 1; y < array.length - 1; y++) {
    let x = xMax[y-1];
    let z = zMax[y+1];
    max = Math.max(max, x + z);
  }

  return max;
}

module.exports = maxDoubleSliceSum;