const gcd = (a, b) => {
  if(a % b == 0)
    return b;
  else
    return gcd(b, a % b);
}

const lcm = (a, b) => {
  return (a * b) / gcd(a, b);
}

const cbn = (n, m) => {
  return lcm(n, m) / m;
}

module.exports.gcd = gcd;
module.exports.lcm = lcm;
module.exports.cbn = cbn;