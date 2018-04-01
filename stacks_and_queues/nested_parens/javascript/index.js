const nested = s => {
  const left = {'(':')'};
  const right = {')':'('};
  const stack = [];
  for(let c of s.split('')) {
    if(left[c]) stack.push(c);
    if(right[c] && stack.pop() != right[c]) return 0;
  };
  if(stack.length > 0) return 0;
  return 1;
};

module.exports = nested;