# Codility Lesson 14 - Binary Search Algorithm
# NailingPlanks
# Count the minimum number of nails that allow a series of planks to be nailed.

def solution(a, b, c)
  planks = a.zip(b)
  nails = c.each_with_index.sort
  last_nail = -1
  # puts "planks: #{planks}"
  # puts "nails: #{nails}"

  planks.each do |plank|
    nail = nails.bsearch do |n|
      if n[0] > plank[1]
        -1
      elsif n[0] >= plank[0] && n[0] <= plank[1]
        0
      else #if n[0] < plank[0]
        1
      end
    end

    return -1 if nail.nil?

    first_nail = nail[1]
    min = nails.bsearch { |n| n[0] >= plank[0] }
    first_nail = first_nail < min[1] ? first_nail : min[1]
    # puts "plank: #{plank}, nail: #{nail}, min: #{min}"
    last_nail = last_nail > first_nail ? last_nail : first_nail

  end

  return last_nail + 1
end