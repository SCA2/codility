const maxFlags = array => {
  // find peaks
  const peaks = array.slice().map(e => 0);
  for(let i=1; i < array.length - 1; i++) {
    if(array[i] > array[i-1] && array[i] > array[i+1]) peaks[i] = array[i];
  }
  // console.log(peaks);

  // find location of next peak
  const next = peaks.slice().map(e => 0);
  next[peaks.length - 1] = -1;
  for(let i=peaks.length - 2; i >= 0; i--) {
    if(peaks[i] != 0)
      next[i] = i;
    else
      next[i] = next[i + 1];
  }
  // console.log(`${peaks}\n${next}`);

  let max = 0;
  for(let i=1; i < Math.sqrt(array.length) + 1; i++) {
    let pos = 0;
    let count = 0;
    while(pos < array.length && count < i) {
      pos = next[pos];
      if(pos == -1) break;
      count += 1;
      pos += i;
    }
    max = Math.max(max, count);
  }
  console.log(`${peaks}\n${next}`);

  // return max flags
  return max;
}

module.exports = maxFlags;