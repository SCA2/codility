const countDiv = (a, b, k) => {
  const low = Math.ceil(a/k);
  const high = Math.floor(b/k);
  return (high - low) + 1;
};

module.exports = countDiv;