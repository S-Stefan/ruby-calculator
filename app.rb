# Basic Calculator functions.

def addition num1, num2
  return num1.to_f + num2.to_f
end

def multiplication num1, num2
  return num1.to_f * num2.to_f
end

def division num1, num2
  return num1.to_f / num2.to_f
end

def subtraction num1, num2
  return num1.to_f - num2.to_f
end

# Advanced calculator functions.

def power num1, num2
  return num1.to_f ** num2.to_f
end

def square_root num1
  return Math.sqrt(num1.to_f)
end

# BMI calculation function
def bmi weight, height, metric
  if metric
    return weight.to_f / (height.to_f * height.to_f)
  else
    return weight.to_f / ((height.to_f * height.to_f) * 703)
  end
end

# Calc intro screen with first choice.

$stdout.puts "please choose: (b)asic or (a)dvanced or (i) for bmi calculator"
$stdout.flush
calculator = $stdin.gets.chomp
if calculator == 'b'
  $stdout.puts "Basic..."
  $stdout.flush

  $stdout.puts "Enter value 1:"
  $stdout.flush
  number1 = $stdin.gets.chomp

  $stdout.puts "Enter value 2:"
  $stdout.flush
  number2 = $stdin.gets.chomp

  $stdout.puts "please choose: + - * /"
  $stdout.flush
  basic_function = $stdin.gets.chomp

  case
  when basic_function == '+'
    $stdout.puts addition number1, number2
    $stdout.flush
  when basic_function == '-'
    $stdout.puts subtraction number1, number2
    $stdout.flush
  when basic_function == '*'
    $stdout.puts multiplication number1, number2
    $stdout.flush
  when basic_function == '/'
    $stdout.puts division number1, number2
    $stdout.flush
  end

elsif calculator == 'a'
  $stdout.puts "Advanced..."
  $stdout.flush

  $stdout.puts "Enter number:"
  $stdout.flush
  number1 = $stdin.gets.chomp

  $stdout.puts "please choose: (p)ower, (s)quareRoot"
  $stdout.flush
  advanced_function = $stdin.gets.chomp

  if advanced_function == 'p'
    $stdout.puts "Enter second number:"
    $stdout.flush
    number2 = $stdin.gets.chomp
    print "#{number1}^#{number2} equals: #{power number1, number2}"

  else
    print "SquareRoot of #{number1} equals: #{square_root number1}"
  end

elsif calculator == 'i'
  $stdout.puts "BMI..."
  $stdout.flush

  $stdout.puts "Enter weight:"
  $stdout.flush
  weight = $stdin.gets.chomp

  $stdout.puts "Enter height:"
  $stdout.flush
  height = $stdin.gets.chomp

  $stdout.puts "(m)etric or (i)mperial"
  $stdout.flush
  metric = $stdin.gets.chomp

  if metric == 'm'
    print bmi weight, height, true
  else
    print bmi weight, height, false
  end

else
  $stdout.puts "Invalid entry!"
  $stdout.flush
end
