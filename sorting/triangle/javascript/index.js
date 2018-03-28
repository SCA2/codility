const triangle = array => {
  const edges = array.sort((a,b) => (a - b));
  for(let i = 2; i < edges.length; i++) {
    let x = edges[i-2];
    let y = edges[i-1];
    let z = edges[i];
    if(x+y <= z) continue;
    if(x+z <= y) continue;
    if(y+z <= x) continue;
    return 1;
  }
  return 0;
};

module.exports = triangle;