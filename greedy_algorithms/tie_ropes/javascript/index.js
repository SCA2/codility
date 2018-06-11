// Codility #16 Greedy Algorithms
// TieRopes
// Tie adjacent ropes to achieve the maximum number of ropes of length >= K.

const solution = (k, a) => {
  let count = 0;
  let length = 0;
  for(let r of a) {
    length += r;
    if(length >= k) {
      count += 1;
      length = 0;
    }
  }
  return count;
}

module.exports = solution;