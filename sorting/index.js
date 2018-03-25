// --- Directions
// Implement bubbleSort, selectionSort, and mergeSort

Array.prototype.swap = function(i, j) {
  const t = this[i];
  this[i] = this[j];
  this[j] = t;
}

Array.prototype.empty = function() {
  return this.length == 0;
}

function bubbleSort(arr) {
  for(let sorted = false; !sorted; ) {
    sorted = true;
    for(let i = 1; i < arr.length; i++) {
      if(arr[i-1] > arr[i]) {
        sorted = false;
        arr.swap(i-1, i);
      }
    }
  }
  return arr;
}

function selectionSort(arr) {
  for(let i = 0; i < arr.length; i++) {
    for(let j = i + 1; j < arr.length; j++) {
      if(arr[i] > arr[j]) {
        arr.swap(i, j);
      }
    }
  }
  return arr;
}

function mergeSort(arr) {
  if(arr.length == 1) { return arr; }
  const half = Math.floor(arr.length / 2);
  const left = mergeSort(arr.slice(0, half));
  const right = mergeSort(arr.slice(half));
  return merge(left, right);
}

function merge(left, right) {
  const merged = [];

  while(!left.empty() && !right.empty()) {
    if(left[0] < right[0]) {
      merged.push(left.shift())
    } else {
      merged.push(right.shift())
    }
  }

  if(!left.empty()) { merged.push(...left); }
  if(!right.empty()) { merged.push(...right); }

  return merged;
}

module.exports = { bubbleSort, selectionSort, merge, mergeSort };
