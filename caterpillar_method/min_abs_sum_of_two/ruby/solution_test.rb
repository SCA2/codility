require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns the minimal abs sum of two' do
    a = [1, 4, -3]
    solution(a).must_equal(1)
  end

  it 'returns the minimal abs sum of two' do
    a = [-8, 4, 5, -10, 3]
    solution(a).must_equal(3)
  end

  it 'returns the minimal abs sum of two' do
    a = [100]
    solution(a).must_equal(200)
  end
end
