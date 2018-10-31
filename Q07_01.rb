require 'date'
start_date = Date.parse("19641010")
end_date = Date.parse("20200724")

count = 0

p (start_date..end_date).select{ |dd|
  formated_date = dd.strftime("%Y%m%d").to_i
  binary_reverse_num = formated_date.to_s(2).reverse
  decimal_num = binary_reverse_num.to_i(2)
  decimal_num == formated_date
 }
