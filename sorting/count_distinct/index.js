const countDistinct = array => {
  const counter = {};
  array.forEach(e => {
    counter[e] = counter[e] + 1 || 1;
  });
  return Object.keys(counter).length;
};

module.exports = countDistinct;