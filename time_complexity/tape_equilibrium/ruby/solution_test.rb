require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds point of minimum difference' do
    a = [3,1,2,4,3]
    solution(a).must_equal(1)
  end

  it 'finds point of minimum difference' do
    a = [-1000, 1000]
    solution(a).must_equal(2000)
  end
end