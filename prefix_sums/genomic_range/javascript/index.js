const genomicRangeQuery = (s, p, q) => {
  s = s.split('');
  let Amap = s.map(c => c == 'A' ? 1 : 0);
  let Cmap = s.map(c => c == 'C' ? 1 : 0);
  let Gmap = s.map(c => c == 'G' ? 1 : 0);
  let Tmap = s.map(c => c == 'T' ? 1 : 0);
  Amap = Amap.reduceRight((s, n, i) => { s[i] = s[i+1] + n || n; return s; }, [0]);
  Cmap = Cmap.reduceRight((s, n, i) => { s[i] = s[i+1] + n || n; return s; }, [0]);
  Gmap = Gmap.reduceRight((s, n, i) => { s[i] = s[i+1] + n || n; return s; }, [0]);
  Tmap = Tmap.reduceRight((s, n, i) => { s[i] = s[i+1] + n || n; return s; }, [0]);
  let result = p.map(i => 0);
  for(let i = 0; i < p.length; i++) {
    if(Tmap[p[i]] - Tmap[q[i]] > 0 || s[q[i]] == 'T') { result[i] = 4 }
    if(Gmap[p[i]] - Gmap[q[i]] > 0 || s[q[i]] == 'G') { result[i] = 3 }
    if(Cmap[p[i]] - Cmap[q[i]] > 0 || s[q[i]] == 'C') { result[i] = 2 }
    if(Amap[p[i]] - Amap[q[i]] > 0 || s[q[i]] == 'A') { result[i] = 1 }
  }
  return result;
};

module.exports = genomicRangeQuery;