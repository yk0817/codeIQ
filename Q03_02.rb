(1..100).each{|i|
  flag = false
  (1..100).each{|j|
    if i % j == 0
      flag = !flag
    end
  }
  p i if flag
}
