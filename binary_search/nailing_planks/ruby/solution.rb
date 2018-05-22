# Codility Lesson 14 - Binary Search Algorithm
# NailingPlanks
# Count the minimum number of nails that allow a series of planks to be nailed.

def solution(a, b, c)
  planks = a.zip(b).sort
  nails = c.each_with_index.sort
  max_index = -1
  # puts "planks: #{planks}"
  # puts "nails: #{nails}"

  last_plank = nil
  planks.each do |plank|
    nail_1 = [*nails.each_with_index].bsearch do |n, i|
      if n[0] > plank[1]
        -1
      elsif n[0] >= plank[0] && n[0] <= plank[1]
        0
      else
        1
      end
    end

    return -1 if nail_1.nil?

    nail_2 = [*nails.each_with_index].bsearch do |n, i|
      n[0] >= plank[0]
    end

    # puts "nail_1: #{nail_1}, nail_2: #{nail_2}"

    nail = nail_1[0][0] < nail_2[0][0] ? nail_1 : nail_2

    nail_index = nail[1]

    next if last_plank && last_plank[0] == plank[0]
    # puts "plank: #{plank}, nail: #{nails[nail_index]}"

    min_index = nails[nail_index][1]
    nails[nail_index..-1].each do |nail|
      break if nail[0] < plank[0] || nail[0] > plank[1]
      # puts "nail: #{nail}"
      min_index = nail[1] < min_index ? nail[1] : min_index
      break if min_index <= max_index
    end
    max_index = max_index > min_index ? max_index : min_index

    last_plank = plank
  end

  return max_index + 1
end