// Codility #15 AbsDistinct
// Compute number of distinct absolute values of sorted array elements.

const solution = a => {
  const count = {};
  for(let i of a) {
    count[Math.abs(i)] = 1;
  }
  return Object.keys(count).length;
}

module.exports = solution;