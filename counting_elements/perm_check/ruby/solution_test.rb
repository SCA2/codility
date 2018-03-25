require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'checks whether a is a permutation' do
    a = [4,1,3,2]
    solution(a).must_equal 1
  end

  it 'checks whether a is a permutation' do
    a = [4, 1, 3, 4]
    solution(a).must_equal 0
  end

  it 'checks whether a is a permutation' do
    a = [4,1,3]
    solution(a).must_equal 0
  end

  it 'checks whether a is a permutation' do
    a = [5]
    solution(a).must_equal 0
  end
end