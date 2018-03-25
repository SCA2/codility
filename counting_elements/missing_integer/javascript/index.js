const missingInteger = array => {
  const n = Math.max(Math.max(...array), array.length) + 2;
  const used = [...Array(n).keys()].map(e => null);
  used[0] = 0;
  for(let e of array) {
    if(e > 0) used[e] = e;
  };
  // console.log(used);
  return used.indexOf(null);
};

module.exports = missingInteger;