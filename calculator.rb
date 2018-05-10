arr = []
def number1
    puts "Let's do some math!"
    puts 'Enter your first number: '
    @num1 = gets.strip.to_i
    if (@num1 != 0)
        modifier
    else 
        puts 'I do not understand. Do you want to try again? Y or N?'
            answer = gets.strip.downcase
            case answer 
            when 'y'    
                number1
            when 'n'
                exit
            end
    end
end

def modifier
    puts 'What is your operator?'
    @op = gets.strip
    case @op
    when "+","-", "*", "/"
        @op.to_sym
        number2
    else puts 'I do not understand. Do you want to try again? Y or N?'
        answer = gets.strip.downcase
        case answer1 
        when 'y'    
            modifier
        when 'n'
            exit
        end
    end
end   

def number2
    puts 'Enter your second number: '
    @num2 = gets.strip.to_i
    if (@num2 != 0)
    result
    else puts 'I do not understand. Do you want to try again? Y or N?'
        answer = gets.strip.downcase
        case answer2 
        when 'y'    
            modifier
        when 'n'
            exit
        end
    end    
end
  

def result
    result = @num1.send(@op, @num2)
    puts 'And that equals: '
    puts result
    arr << result
    puts '--------------------------------'
    puts 'Do you want to continue? Y or N?'
    answer = gets.strip.downcase
    case answer3 
    when 'y'   
      @num1 = result 
            modifier
    when 'n'
            arr.clear
    end
end
number1
