require 'minitest/autorun'

def max_kadane(a)
  a = a.reverse
  max_to_here = a[0]
  max_array = [a[0]]
  a[1..-1].each do |x|
    max_to_here = [x, max_to_here + x].max
    max_array.push(max_to_here)
  end
  max_array.reverse
end

def min_kadane(a)
  min_to_here = a[0]
  min_array = [a[0]]
  a[1..-1].each do |x|
    min_to_here = [x, min_to_here + x].min
    min_array.push(min_to_here)
  end
  min_array
end

def solution(a)
  right = max_kadane(a)[1..-1]
  left =  min_kadane(a)[0..-2]
  right.zip(left).map {|i| i[0] - i[1] }.max
end