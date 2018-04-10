# Codility Lesson 10 - Prime and Composite Numbers

def solution
  peaks = (1..a.length-2).reduce([]) do |p, i|
    a[i] > a[i-1] && a[i] > a[i+1] ? p.push(i) : p
  end

  return 0 if peaks.length < 1

  min_distance = ((peaks[-1] - peaks[0])**0.5).floor

  flags = [peaks[0]]
  (1..peaks.length-1).each do |i|
    flags.push(i) if peaks[i] - flags[-1] > min_distance
  end

  flags.length

  # range = peaks[-1] - peaks[0] + 1
  # units = Set[]
  # (1..(range**0.5).ceil).each do |i|
  #   # if range % i == 0
  #     units.add(i)
  #     units.add(range / i)
  #   # end
  # end
  # units = units.to_a.sort!
  # # puts "range #{range}"
  # # puts "peaks #{peaks}"
  # # puts "units #{units}"

  # for unit in units do
  #   found = [false] * range.fdiv(unit).ceil
  #   peaks.each do |p|
  #     index = (p - peaks[0]) * found.length / range
  #     found[index] = true
  #     # puts "#{unit}, #{p}, #{index}, #{found}"
  #   end
  #   return found.length if found.all? {|f| f == true }
  # end
  # return 0

end