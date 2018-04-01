Array.prototype.peek = function() {
  return this[this.length - 1];
};

const stonewall = array => {
  const stack = [0];
  let blocks = 0;
  for(let h of array) {
    while(stack.peek() > h) {
      stack.pop();
    }
    if(h > stack.peek()) {
      stack.push(h);
      blocks++;
    }
  }
  return blocks;
};

module.exports = stonewall;