const missingElement = (array, n) => {
  const used = [...Array(n).keys()].map(e => 0);
  array.forEach(e => {
    used[e - 1] = 1;
  });
  console.log(used);
  return used.indexOf(0) + 1;
};

module.exports = missingElement;