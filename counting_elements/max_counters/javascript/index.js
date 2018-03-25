const maxCounters = (n, ops) => {
  const counters = [...Array(n).keys()].map(e => 0);
  let max = 0;
  let lazy = 0;
  ops.forEach(op => {
    if(op >= 1 && op <= n) {
      if(lazy > counters[op-1]) { counters[op-1] = lazy; }
      counters[op-1] += 1;
      max = Math.max(counters[op-1], max);
    }
    if(op == (n+1)) {
      lazy = max;
    } 
    console.log(counters);
  });
  for(let i = 0; i < counters.length; i++) {
    if(lazy > counters[i]) { counters[i] = lazy; }
  }
  return counters;
};

module.exports = maxCounters;