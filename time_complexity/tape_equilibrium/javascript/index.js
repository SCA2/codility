const balancePoint = (array) => {
  const leftSum = [];
  const rightSum = [];
  const difference = [];
  let i, j;
  let l = 0; let r = 0;
  for(i = 0; i < array.length; i++)  {
    j = array.length - i - 1;
    l += array[i];
    r += array[j];
    leftSum[i] = l;
    rightSum[j] = r;
  };
  for(i = 1; i < array.length; i++) {
    difference.push(Math.abs(leftSum[i - 1] - rightSum[i]));
  }
  console.log(leftSum, rightSum, difference);
  return Math.min(...difference);
};

module.exports = balancePoint;