const permcheck = (array) => {
  const used = [...Array(array.length).keys()].map(e => 0);
  array.forEach(e => {
    used[e - 1] += 1;
  });
  return used.every(e => e === 1);
};

module.exports = permcheck;