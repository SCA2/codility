require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds maximum number of flags that can be set on a' do
    a = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
    solution(a).must_equal(3)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [1, 2, 1]
    solution(a).must_equal(1)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [1, 1, 1]
    solution(a).must_equal(0)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [1]
    solution(a).must_equal(0)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [0, 0, 0, 0, 0, 1, 0, 1, 0, 1]
    solution(a).must_equal(2)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0]
    solution(a).must_equal(3)
  end

  it 'finds maximum number of flags that can be set on a' do
    a = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
    solution(a).must_equal(2)
  end
end