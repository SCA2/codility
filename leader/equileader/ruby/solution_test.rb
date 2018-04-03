require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'counts number of equileaders in a' do
    a = [4, 3, 4, 4, 4, 2]
    solution(a).must_equal(2)
  end

  it 'counts number of equileaders in a' do
    a = [4, 3, 4, 4, 4, 2, 1]
    solution(a).must_equal(0)
  end
end