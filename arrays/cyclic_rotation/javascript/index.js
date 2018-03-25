Array.prototype.rotate = function(k) {
  if(this.length == 0) return this;
  for(let i = 0; i < k; i++) {
    this.unshift(this.pop());
  }
  return this;
};

const solution = (array, n, k) => {
  return array.rotate(k);
}

module.exports = solution;