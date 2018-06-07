require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns absolute distinct count of array a' do
    a = [-5, -3, -1, 0, 3, 6]
    solution(a).must_equal(5)
  end
end