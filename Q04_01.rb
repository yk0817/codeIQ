def cut_stick(cur_num, size, people_num)
  if cur_num >= size
    0
  elsif cur_num < people_num
    1 + cut_stick(cur_num * 2, size, people_num)
  else
    1 + cut_stick(cur_num + people_num, size, people_num)
  end
end

p cut_stick(1, 20 ,3)
p cut_stick(1, 100 ,5)
