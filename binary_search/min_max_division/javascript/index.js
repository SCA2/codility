const makeBlocks = (a, target) => {
  let sum = a[0];
  let blocks = 1;
  for(let i=1; i < a.length; i++) {
    if(sum + a[i] > target) {
      sum = a[i];
      blocks += 1
    } else {
      sum += a[i];
    }
  }
  return blocks;
}

const solution = (k, m, a) => {

  let minSum = Math.max(...a);
  let maxSum = a.reduce((s, n) => s + n);
  let midSum = 0;
  let result = 0;

  if(k == a.length) return minSum;
  if(k == 1) return maxSum;

  while(maxSum >= minSum) {
    midSum = Math.floor((maxSum + minSum) / 2);
    let blocks = makeBlocks(a, midSum);
    if(blocks <= k) { // midSum is too big
      maxSum = midSum - 1;
      result = midSum;
    } else {          // midSum is too small
      minSum = midSum + 1;
    }
  }
  return result;
}

module.exports = solution;