# Codility Lesson 14 - Binary Search Algorithm
# NailingPlanks
# Count the minimum number of nails that allow a series of planks to be nailed.

def solution(a, b, c)
  planks = a.zip(b)
  nails = c.each_with_index.sort
  first_nail = nails.length
  last_nail = 0
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
    nail[1].downto 0 do |i|
      break if nails[i][0] < plank[0]
      # puts "#{i}"
      first_nail = [first_nail, nails[i][1]].min
    end
    last_nail = [last_nail, first_nail].max

  end

  return last_nail + 1
end