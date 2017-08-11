 def calculate(first_number, second_number, operator)
  if operator == "+"
    result = first_number + second_number
  elsif operator == "-"
    result = first_number - second_number
  elsif operator == "x"
    result = first_number * second_number
  elsif operator == "/"
    result = round(first_number.to_f / second_number, 2)
  else
    result = "non valid character"
  end
 end
