require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds maximum product of 3 elements in a' do
    a = [-3, 1, 2, -2, 5, 6]
    solution(a).must_equal(60)
  end

  it 'finds maximum product of 3 elements in a' do
    a = [-3, 1, 2, -2, -5, 6]
    solution(a).must_equal(90)
  end
end