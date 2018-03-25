const frogRiver = (x, array) => {
  const path = [...Array(x).keys()].map(e => null);
  array.forEach((e, index) => {
    if(path[e-1] == null) path[e-1] = index;
  });
  console.log(path);
  if(path.some(e => e == null)) return -1;
  return Math.max(...path);
};

module.exports = frogRiver;