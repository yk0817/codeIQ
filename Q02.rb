OP = ["+", "-", "/", "*", ""]

# 1000~10000の繰り返し

(1000...10000).each{|num|
  OP.each{|op1|
    OP.each{|op2|
      OP.each{|op3|
        num = num.to_s
        eval_calc = "#{num[0]}#{op1}#{num[1]}#{op2}#{num[2]}#{op3}#{num[3]}"
        if eval_calc.length > 4 && !eval_calc.match(/0\d{1,}/)
          begin
            outcome = eval(eval_calc)
            if num.to_s.reverse == outcome.to_s
              p "#{eval_calc}は#{outcome}"
              exit
            end
          rescue => ZeroDivisionError 
            next
          end
        end
       }
     }
  }
}
