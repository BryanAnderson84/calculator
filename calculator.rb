#make basic calculator function
#what is the first number?
#what is the operator?
#what is the second number?
#print result and communicate whats next

  def operator(operator, first_number, second_number)
    #operand = operator.to_sym --> use for later to simplify
    case @user_operator
      when "+"
        sum = first_number + second_number
        puts "The answer is: #{sum}"
      when "_"
        sum = first_number - second_number
        puts "The answer is: #{sum}"
      when "*"
        sum = first_number * second_number
        puts "The answer is: #{sum}"
      when "/"
        sum = first_number / second_number
        puts "The answer is: #{sum}"
      else
        puts "Please use a correct value"
    end
    #puts first_number.public_send(operand, second_number) --> save for later
  end

  def correct_op
    puts "What is the operator? Must be one of the following: +, -, *, or /."
    @user_operator = gets.strip
    case @user_operator
      when "+", "-", "*", "/"
        puts "What is the second number?"
        @user_second_number = gets.to_i
        operator(@user_operator, @user_first_number, @user_second_number)
      else
        puts "Operator must be +, -, *, or /."
        correct_op
    end

  end

  def calculator
    puts "What is the first Number?"
    @user_first_number = gets.to_i
    if @user_first_number == 0
      puts "Must be a numerical value"
      calculator
    end
    correct_op
  end


while true
  calculator
  puts "To go again press y, to exit press x"
  if gets.chomp == 'x'
    exit
  end
end
