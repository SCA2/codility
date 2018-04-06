require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates maximum possible profit' do
    a = [23171, 21011, 21123, 21366, 21013, 21367]
    solution(a).must_equal(356)
  end
end