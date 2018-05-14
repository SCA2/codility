require_relative('../../../test_helper')
require_relative('solution')

describe 'fib_array' do
  it 'calculates array of n fibonacci numbers' do
    fib_array(6).must_equal([1, 1, 2, 3, 5, 8])
  end
end

describe 'solution' do
  it 'returns array of fib A[i] modulo 2**B[i]' do
    a = [4, 4, 5, 5, 1]
    b = [3, 2, 4, 3, 1]
    solution(a, b).must_equal([5, 1, 8, 0, 1])
  end

  it 'returns array of fib A[i] modulo 2**B[i]' do
    a = [1, 50000]
    b = [3, 16]
    solution(a, b).must_equal([1, 52578])
  end
end