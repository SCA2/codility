require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds missing element in a' do
    a = [2, 3, 1, 5]
    solution(a).must_equal 4
  end
end