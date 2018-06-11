require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds maximal set of non-overlapping segments' do
    a = [1, 3, 7, 9, 9]
    b = [5, 6, 8, 9, 10]
    solution(a, b).must_equal(3)
  end

  it 'finds maximal set of non-overlapping segments' do
    a = []
    b = []
    solution(a, b).must_equal(0)
  end
end