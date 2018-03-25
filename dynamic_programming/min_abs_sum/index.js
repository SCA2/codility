// Codility #17 Dynamic Programming
// MinAbsSum
// Given array of integers, find the lowest absolute sum of elements.

const solution = a => {
  let size = a.length;
  if(size < 1) return 0;

  let abs = a.map(e => Math.abs(e));
  let maxAbsSum = abs.reduce((sum, i) => sum + i);
  let target = Math.ceil(maxAbsSum / 2);
  let m = [...new Array(2)].map(e => new Array(target+1));

  for(let j = 0; j <= target; j++) m[0][j] = 0;

  for(let i = 1; i < size; i++) {
    let m0 = (i - 1) % 2;
    let m1 = i % 2;
    for(let j = 0; j <= target; j++) {
      if(abs[i] > j)
        m[m1][j] = m[m0][j];
      else
        m[m1][j] = Math.max(m[m0][j], m[m0][j-abs[i]] + abs[i]);
    }
  }

  return Math.abs(maxAbsSum - 2 * m[(size - 1) % 2][target]);
}

module.exports = solution;