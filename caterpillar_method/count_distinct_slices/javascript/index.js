// Codility #15
// CountDistinctSlices
// Count the number of distinct slices (containing only unique numbers)

const solution = (m, a) => {
  let used = [...new Array(m+1).keys()].map(e => -1);
  let head = 0, tail = 0, p = 0, q = 0, count = 0;
  for(head = 0; head < a.length; head++) {
    if(used[a[head]] == -1) {
      used[a[head]] = head;
    } else {
      let newTail = used[a[head]] + 1;
      p = head - tail;
      q = head - newTail;
      count += p*(p+1)/2 - q*(q+1)/2;
      for(let i = tail; i < newTail; i++) used[a[i]] = -1;
      used[a[head]] = head;
      tail = newTail;
    }
  }
  p = head - tail;
  count += p*(p+1)/2;
  return Math.min(count, 1000000000);
}

module.exports = solution;

