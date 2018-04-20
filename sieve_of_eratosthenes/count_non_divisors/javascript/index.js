// const countNonDivisors = array => {
//   const counts = [];
//   for(let i=0; i < array.length; i++) {
//     for(let j=0; j < array.length; j++) {
//       if(array[i] % array[j] != 0) {
//         counts[i] = counts[i] + 1 || 1;
//       } else {
//         counts[i] = counts[i] || 0;
//       }
//     }
//   }
//   return counts;
// }

const countNonDivisors = array => {

  let max = Math.max(...array);
  let quotients = [...new Array(max+1).keys()].map(e => 0);
  array.forEach(i => quotients[i] = i);

  let factors = {};
  for(let i=1; i < quotients.length; i++) {
    if(quotients[i] == 0) continue;
    for(let j=i; j < quotients.length; j += i) {
      if(quotients[j] != 0) {
        if(factors[j])
          factors[j].push(i)
        else
          factors[j] = [i]; 
      }
    }
  }

  let frequency = array.reduce((a, e) => {
    a[e] = a[e] + 1 || 1;
    return a;
  }, {});

  let nds = [];
  for(f in factors) {
    let count = factors[f].reduce((sum, i) => sum + frequency[i], 0);
    nds[f] = array.length - count;
  }

  let results = [];
  for(let i=0; i < array.length; i++) {
    results[i] = nds[array[i]];
  }

  return results;
}

module.exports.countNonDivisors = countNonDivisors;