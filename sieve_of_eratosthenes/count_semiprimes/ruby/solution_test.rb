require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'counts semiprimes in range [p..q]' do
    n = 26
    p = [1, 4, 16]
    q = [26, 10, 20]
    solution(n, p, q).must_equal([10, 4, 0])
  end

  it 'counts semiprimes in range [p..q]' do
    n = 1
    p = [1]
    q = [1]
    solution(n, p, q).must_equal([0])
  end

  it 'counts semiprimes in range [p..q]' do
    n = 4
    p = [1]
    q = [4]
    solution(n, p, q).must_equal([1])
  end
end