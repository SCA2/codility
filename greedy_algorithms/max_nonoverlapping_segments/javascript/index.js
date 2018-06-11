// Codility #16 Greedy Algorithms
// MaxNonoverlappingSegments
// Find a maximal set of non-overlapping segments.

const solution = (a, b) => {
  if(a.length < 1) return a.length;

  let tail = -1, count = 0;
  for(let i = 0; i < a.length; i++) {
    if(a[i] > tail) {
      count += 1;
      tail = b[i];
    }
  }
  return count;
}

module.exports = solution;