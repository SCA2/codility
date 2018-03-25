const minPerimeter = area => {
  for(let a = Math.floor(Math.sqrt(area)); a > 0; a--) {
    let b = Math.floor(area / a);
    if(a * b == area) return 2 * (a + b);
  }
  return 0;
}

module.exports = minPerimeter;