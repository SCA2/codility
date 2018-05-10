require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns the number of chocolates eaten' do
    n = 10
    m = 4
    solution(n, m).must_equal(5)
  end

  it 'returns the number of chocolates eaten' do
    n = 10
    m = 3
    solution(n, m).must_equal(10)
  end
end