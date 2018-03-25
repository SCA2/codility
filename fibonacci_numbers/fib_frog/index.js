const fibonacci = n => {
  let i, memo = [0, 1].concat(new Array(n));
  for(i=2; memo[i-1] <= n; i++) {
    memo[i] = memo[i - 2] + memo[i - 1];
  }
  return memo.slice(2, i-1);
}

const solution = a => {
  const n = a.length;
  let fibs = fibonacci(n+1).reverse();
  let fibLength = fibs.length;
  let count = new Array(n);
  let queue = new Array(n);
  let visited = {};
  let head = 0, tail = 0;
  queue[head++] = -1;

  while(head != tail) {
    let position = queue[tail++];

    for(var i = 0; i < fibLength; i++) {
      let jump = fibs[i];
      if(position + jump == n) return count[position] + 1 || 1;
      if(!a[position + jump] || visited[position + jump] || position + jump > n) continue;
      count[position + jump] = count[position] + 1 || 1;
      queue[head++] = position + jump;
    }
    visited[position] = 1;
  }
  return -1;
}

module.exports.fibonacci = fibonacci;
module.exports.solution = solution;