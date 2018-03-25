const minAvgTwoSlice = array => {
  const sums = array.reduce((sum, n, i) => {
    sum[i+1] = sum[i] + n;
    return sum
  }, [0]);
  console.log(sums);
  let head = 2;
  let tail = 0;
  let minTail = 0;
  let lastAvg = Number.MAX_VALUE;
  let minAvg = Number.MAX_VALUE;
  while(head < sums.length && tail < head) {
    let newAvg = (sums[head] - sums[tail]) / (head - tail);
    console.log(tail, head, newAvg);
    if(newAvg < minAvg) {
      minAvg = newAvg;
      minTail = tail;
    }

    if(newAvg == lastAvg) {
      head++;
    } else if(head - tail < 3) {
      head++
    } else {
      tail++;
    }
    lastAvg = newAvg;
  }
  return minTail;
};

module.exports = minAvgTwoSlice;