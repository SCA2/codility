// Codility #15 CountTriangles
// Count the number of triangles that can be built from a given set of edges.

const solution = a => {
  a.sort((a, b) => a - b);
  let i = 0, j = 0, k = 0, triangles = 0;
  for(i=0; i < a.length; i++) {
    k = i + 2;
    for(j=i+1; j < a.length; j++) {
      for(; k < a.length && a[k] < a[i] + a[j]; k++);
      triangles += k - j - 1;
    }
  }
  return triangles;
}

module.exports = solution;