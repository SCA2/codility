const countZeros = (n) => {
  const s = n.toString(2);
  const zeros = s.split('1');
  if(zeros[zeros.length-1]) { zeros.pop(); }
  const lengths = zeros.map(s => s.length);
  return Math.max(...lengths);
}

module.exports = countZeros;