N = 12

def move(log)
  return 1 if log.size == N + 1
  [[0, 1], [0, -1], [1, 0], [-1, 0]].each{|d|
    next_pos = [log[-1][0] + d[0], log[-1][1] + d[1]]
    unless log.include?(next_pos)
      cnt += move(log + [next_pos])
    end
  }
  cnt
end

p move([[0, 0]])
