// return 1 if string s is properly bracketed, 0 otherwise

const brackets = s => {
  const left = {'(':')', '[':']', '{':'}'};
  const right = {')':'(', ']':'[', '}':'{'};
  const stack = [];
  const chars = s.split('');
  for(let c of chars) {
    if(left[c]) stack.push(left[c]);
    if(right[c] && stack.pop() != c) return 0;
  };

  if(stack.length > 0) return 0;
  return 1;
};

module.exports = brackets;