const maxProfit = array => {
  if(array.length == 0) return 0;
  let minToHere = array[0];
  let maxToHere = array[0];
  let maxProfit = 0;
  for(let p of array) {
    if(p < minToHere) {
      minToHere = p;
      maxToHere = p;
    }
    maxToHere = Math.max(maxToHere, p);
    let profitToHere = maxToHere - minToHere;
    maxProfit = Math.max(maxProfit, profitToHere);
  };
  return maxProfit;
};

module.exports = maxProfit;