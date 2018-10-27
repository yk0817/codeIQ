cnt = 0

(0..2).each{ |i|
  (0..10).each{ |j|
      (0..15).each{ |k|
        (0..15).each{ |l|
          if 500 * i + 100 * j + 50 * k + 10 * l == 1000
            if i + j + k + l <= 15
              cnt +=1
            end
          end
        }
      }
    }
  }
p cnt
