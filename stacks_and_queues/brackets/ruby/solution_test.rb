require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns 1 if string is properly nested' do
    s = '{[()()]}'
    solution(s).must_equal(1)
  end

  it 'returns 1 if string is properly nested' do
    s = '{[()()]'
    solution(s).must_equal(0)
  end

  it 'returns 1 if string is properly nested' do
    s = '{[(hey)(baby)]}'
    solution(s).must_equal(1)
  end

  it 'returns 0 if string is not properly nested' do
    s = '([)()]'
    solution(s).must_equal(0)
  end
end