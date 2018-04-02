# Codility Lesson 7 - Stacks and Queues
# Fish
# N voracious fish are moving along a river. Calculate how many fish are alive.

def solution(a, b)
  survivors = []
  threats = []
  a.zip(b).each do |f|
    if f[1] == 1
      threats.push f
    else
      threats.pop while threats[-1] && threats[-1][0] < f[0]
      survivors.push f unless threats[-1]
    end
  end
  survivors.length + threats.length
end