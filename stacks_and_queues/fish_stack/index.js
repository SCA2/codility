Array.prototype.peek = function() {
  return this[this.length - 1];
};

const fish = (a, b) => {
  const swimmers = [];
  const threats = [];
  while(a.length > 0 && b.length > 0) {
    swimmers.push([a.pop(), b.pop()]);
  };

  let survivors = 0;
  while(swimmers.length > 0) {
    let s = swimmers.pop();
    if(s[1] == 1) {
      threats.push(s);
    }

    if(s[1] == 0) {
      while(threats.length > 0 && s[0] > threats.peek()[0]) {
        threats.pop();
      }
      if(threats.length == 0) {
        survivors++;
      }
    }
  }

  survivors += threats.length;
  return survivors;
};

module.exports = fish;