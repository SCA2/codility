const findOddOccurrence = (array) => {
  const counts = {};
  array.forEach(e => {
    counts[e] = counts[e] + 1 || 1;
    if(counts[e] > 1) { delete counts[e] }
  })
  return Number.parseInt(Object.keys(counts)[0]);
}

module.exports = findOddOccurrence;