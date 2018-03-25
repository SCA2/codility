require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds smallest positive integer not in sequence a' do
    a = [1, 3, 6, 4, 1, 2]
    solution(a).must_equal 5
  end

  it 'finds smallest positive integer not in sequence a' do
    a = [1, 2, 3]
    solution(a).must_equal 4
  end

  it 'finds smallest positive integer not in sequence a' do
    a = [-1, -3]
    solution(a).must_equal 1
  end
end