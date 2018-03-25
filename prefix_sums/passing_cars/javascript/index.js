const passingCars = array => {
  // const west = array.reduceRight((s, i) => [i+s[0] || i].concat(s), []);
  const west = [];
  let i;
  for(i = array.length - 1; i >= 0; i--) {
    west[i] = array[i] + west[i+1] || array[i];
  };
  console.log(west);
  let sum = 0;
  for(i = 0; i < array.length; i++) {
    if(array[i] == 0) sum += west[i];
  }
  return sum;
}

module.exports = passingCars;