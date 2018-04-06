const peaks = a => {
  // find peaks
  const peakLocations = a.slice().map(e => 0);
  for(let i=1; i < a.length - 1; i++) {
    if(a[i] > a[i-1] && a[i] > a[i+1]) peakLocations[i] = a[i];
  }

  // factor size of array
  const blockSizes = new Set();
  for(let i=1; i <= Math.sqrt(a.length); i++) {
    if(a.length % i == 0) {
      blockSizes.add(i);
      blockSizes.add(a.length / i);
    }
  }

  // check blocks for peaks
  let blocks = Array.from(blockSizes).sort((a,b) => a - b).slice(1);

  for(let block of blocks) {
    let peakCount = 0;
    for(let i=0; i < a.length; i += block) {
      let foundPeak = false;
      for(let j=i; j < i+block && !foundPeak; j++) {
        if(peakLocations[j] != 0) {
          peakCount++;
          foundPeak = true;
        }
      }
    }
    if(peakCount == a.length / block) return a.length / block;
  }
  return 0;
}

module.exports = peaks;