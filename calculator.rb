#make basic calculator function
#what is the first number?
#what is the operator?
#what is the second number?
#print result and communicate whats next

def operator(operator, first_number, second_number)
  operand = operator.to_sym
  # if operator == "+"
  #   sum = first_number + second_number
  #   puts sum
  # end
  puts first_number.public_send(operand, second_number)
end

def calculator
  puts "What is the first Number?"
  user_first_number = gets.to_i

  puts "What is the operator?"

  user_operator = gets.strip

  puts "What is the second number?"
  user_second_number = gets.to_i
  case user_operator
  when "+", "-", "*", "/"
    operator(user_operator, user_first_number, user_second_number)
  else
    puts "Operand must be +, -, *, or /."
  end

end


calculator
