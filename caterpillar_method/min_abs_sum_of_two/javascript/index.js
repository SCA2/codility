// Codility #15
// MinAbsSumOfTwo
// Find the minimal absolute value of a sum of two elements.

const solution = a => {
  a.sort((a, b) => a - b);
  let a0 = a[0];
  let aN = a[a.length - 1] ;
  if(a0 > 0) return 2 * a0;
  if(aN < 0) return Math.abs(2 * aN);

  let minSum = Number.MAX_SAFE_INTEGER;

  let lo = 0, hi = a.length - 1;
  while(lo <= hi) {
    let candidate = a[lo] + a[hi];
    minSum = Math.min(minSum, Math.abs(candidate));
    if(minSum == 0) {
      return 0;
    } else if(candidate <= 0) {
      lo += 1;
    } else {
      hi -= 1;
    }
  }

  return minSum;
}

module.exports = solution;