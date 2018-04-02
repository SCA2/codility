require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns 1 if s is empty' do
    s = ''
    solution(s).must_equal(1)
  end

  it 'returns 1 if s is properly nested' do
    s = '(()(())())'
    solution(s).must_equal(1)
  end

  it 'returns 0 if s is not properly nested' do
    s = '())'
    solution(s).must_equal(0)
  end

  it 'returns 0 if s is not properly nested' do
    s = '((('
    solution(s).must_equal(0)
  end
end