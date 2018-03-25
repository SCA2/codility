const binarySearch = (array, n, cb, min = 0, max = array.length - 1) => {
  // console.log(array, n, min, max);
  let half = min + Math.floor((max - min) / 2);
  if(n == array[half] || max == min) {
    return half;
  }
  if(cb(n, array[half])) {
    return binarySearch(array, n, cb, min, half);
  }
  if(!cb(n, array[half])) {
    return binarySearch(array, n, cb, half + 1, max);
  }
};

const discIntersections = array => {
  const segments = [];
  const minList = [];
  const maxList = [];
  for(let i = 0; i < array.length; i++) {
    segments[i] = [];
    let min = i - array[i];
    let max = i + array[i];
    segments[i][0] = min;
    segments[i][1] = max;
    minList.push(min);
    maxList.push(max);
  }
  maxList.sort((a,b) => a - b);
  minList.sort((a,b) => b - a);

  let combos = 0;
  segments.forEach(s => {
    let lo = binarySearch(maxList, s[0] - 0.5, (n, h) => n < h);
    let hi = binarySearch(minList, s[1] + 0.5, (n, h) => n > h);
    combos += (segments.length - lo - hi - 1);
    // console.log(s, maxList, lo, minList, hi, combos);
  });

  combos /= 2;
  if(combos > 10000000)
    return -1;
  else
    return combos;
};

module.exports.binarySearch = binarySearch;
module.exports.discIntersections = discIntersections;