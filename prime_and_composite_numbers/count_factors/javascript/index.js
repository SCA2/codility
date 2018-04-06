const countFactors = n => {
  const factors = new Set();
  let factor = 1;

  while(factor * factor <= n) {
    if(n % factor == 0) {
       factors.add(factor);
       factors.add(n / factor);
    }
    factor += 1;
  }
  console.log(factors);

  return factors.size;
};

module.exports.countFactors = countFactors;