const gcd = (a, b) => {
  if(a % b == 0)
    return b;
  else
    return gcd(b, a % b);
}

const factorGCD = (n, g) => {
  let m;
  while((m = gcd(n, g)) != 1) {
    n /= m;
  }
  return n;
}

const cpd = (m, n) => {
  const g = gcd(m, n);
  if(factorGCD(m, g) == 1 && factorGCD(n, g) == 1)
    return 1;
  else
    return 0;
}

const solution = (a, b) => {
  let count = 0;
  for(let i=0; i < a.length; i++) {
    count += cpd(a[i], b[i]);
  }
  return count;
}

module.exports.factorGCD = factorGCD;
module.exports.cpd = cpd;
module.exports.solution = solution;