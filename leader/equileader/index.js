const equileader = array => {
  let guess, count = 0;
  for(let c of array) {
    if(count == 0)
      guess = c;

    if(c == guess)
      count++;
    else
      count--;
  }

  const leaders = array.reduce((sum, c) => c == guess ? sum + 1 : sum, 0);

  if(leaders <= array.length / 2) return 0;

  let lCount = 0;
  let rCount = leaders;
  let equileaders = 0;
  for(let i = 0; i < array.length; i++) {
    let lSize = (i + 1) / 2;
    let rSize = (array.length - i - 1) / 2;
    if(array[i] == guess) {
      lCount++;
      rCount--;
    }
    if(lCount > lSize && rCount > rSize) equileaders++;
  }
  return equileaders;
};

module.exports.equileader = equileader;