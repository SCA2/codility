require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns the minimal large sum' do
    k = 3
    m = 5
    a = [2, 1, 5, 1, 2, 2, 2]
    solution(k, m, a).must_equal(6)
  end

  it 'returns the minimal large sum' do
    k = 2
    m = 7
    a = [4, 1, 2, 7]
    solution(k, m, a).must_equal(7)
  end
end