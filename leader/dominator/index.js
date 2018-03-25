const dominator = array => {
  let guess, count = 0;
  for(let c of array) {
    if(count == 0)
      guess = c;
    
    if(guess == c)
      count++;
    else
      count--;
  }

  let sum = array.reduce((s, c) => c == guess ? s + 1 : s, 0);
  if(sum <= array.length / 2) return -1;
  return array.findIndex(c => c == guess);
};

module.exports = dominator;