const fibonacci = n => {
  let memo = [...new Array(n+1).keys()];
  for(let i=2; i <= n; i++) {
    memo[i] = (memo[i - 2] + memo[i - 1]) & (1 << 30) - 1;
  }
  return memo;
}

const solution = (a, b) => {
  let fibs = fibonacci(Math.max(...a)+1);
  let result = [];
  for(let i=0; i < a.length; i++) {
    result.push(fibs[a[i]+1] & (1 << b[i]) - 1);
  }
  return result;
}

module.exports.fibonacci = fibonacci;
module.exports.solution = solution;