#make basic calculator function
#what is the first number?
#what is the operator?
#what is the second number?
#print result and communicate whats next

  def operator(operator, first_number, second_number)
    #operand = operator.to_sym --> use for later to simplify
    case @user_operator
      when "+"
        @answer = first_number + second_number
        puts "The answer is: #{@answer}"
      when "-"
        @answer = first_number - second_number
        puts "The answer is: #{@answer}"
      when "*"
        @answer = first_number * second_number
        puts "The answer is: #{@answer}"
      when "/"
        @answer = first_number / second_number
        puts "The answer is: #{@answer}"
      else
        puts "Please use a correct value"
    end
    #puts first_number.public_send(operand, second_number) --> save for later
  end

def keep_going
  @user_first_number = @answer
  correct_op
  operator(@user_operator, @user_first_number, @user_second_number)
  history_call
end

def history_call
  puts "To clear value, press c. To keep using this value press y, to quit press q"
  choice = gets.chomp
  if choice == "c"
    start
  elsif choice == "y"
    keep_going
  elsif choice == "q"
    exit
  else
    puts "Invalid entry - Please enter either c or y"
    history_call
  end

end

  def correct_op
    puts "What is the operator? Must be one of the following: +, -, *, or /."
    @user_operator = gets.strip
    case @user_operator
      when "+", "-", "*", "/"
        puts "What is the second number?"
        @user_second_number = gets.to_i
        if @user_second_number == 0
          puts "Must be a numerical value"
          calculator
        end
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
  end

def start
  calculator
  correct_op
  operator(@user_operator, @user_first_number, @user_second_number)
  history_call
end

  start
