require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds minimal nucleotide in a range of sequence DNA' do
    s = 'CAGCCTA'
    p = [2, 5, 0]
    q = [4, 5, 6]
    solution(s, p, q).must_equal [2, 4, 1]
  end

  it 'finds minimal nucleotide in a range of sequence DNA' do
    s = 'AC'
    p = [0, 0, 1]
    q = [0, 1, 1]
    solution(s, p, q).must_equal [1, 1, 2]
  end
end