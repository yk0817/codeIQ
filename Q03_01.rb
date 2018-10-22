N = 100

# falseのものが裏となる
# [[1, false], [2, false]...]
card_ary = Array.new(100, false)

(2..N).each{|i|
  j = i - 1
  while(j < N) do
    card_ary[j] = !card_ary[j]
    j += i
  end
}

100.times do |i|
  p i + 1 if card_ary[i] == false
end
