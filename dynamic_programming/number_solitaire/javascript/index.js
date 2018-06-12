// Codility #17 Dynamic Programming
// NumberSolitaire
// In a given array, find the subset of maximal sum in which the
// distance between consecutive elements is at most 6.

const solution = a => {
  let maxJump = 6;
  let maxScore = [...new Array(maxJump)].map(e => a[0]);
  for(let i=1; i < a.length; i++) {
    maxScore[i % maxJump] = Math.max(...maxScore) + a[i];
    // console.log(a, i, maxScore);
  }
  return maxScore[(a.length - 1) % maxJump]
}

module.exports = solution;