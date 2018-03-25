const sieve = n => {
  n = Math.floor(n);
  if(n < 2) return [];
  const primes = [0, 0].concat([...new Array(n+1).keys()].slice(2));
  for(let i = 2; i*i < primes.length; i++) {
    if(primes[i] == 0) continue;
    for(let j = i * i; j < primes.length; j += i) {
      primes[j] = 0;
    }
  }
  return primes.filter(e => e != 0);
};

const semiPrimes = (n, p, q) => {
  const semiPrimeList = [...new Array(n+1).keys()].map(e => 0);
  const primeList = sieve(n / 2);
  for(let i=0; i < primeList.length; i++) {
    for(let j=i; j < primeList.length; j++) {
      let semiprime = primeList[i] * primeList[j];
      if(semiprime > n) continue;
      semiPrimeList[semiprime] = 1;
    }
  }

  for(let i=1; i < semiPrimeList.length; i++) {
    semiPrimeList[i] += semiPrimeList[i-1];
  }

  const results = [];
  for(let i=0; i < p.length; i++) {
    let semiPrimeCount = semiPrimeList[q[i]] - semiPrimeList[p[i] - 1];
    results.push(semiPrimeCount);
  }
  return results;
}

module.exports.sieve = sieve;
module.exports.semiPrimes = semiPrimes;