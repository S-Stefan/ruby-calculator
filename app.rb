# Basic Calculator functions.

def addition num1, num2
  return num1 + num2
end

def multiplication num1, num2
  return num1 * num2
end

def division num1, num2
  return num1 / num2
end

def subtraction num1, num2
  return num1 - num2
end

# Advanced calculator functions.

# Calc intro screen with first choice.

$stdout.puts "please choose: (b)asic or (a)dvanced"
$stdout.flush
calculator = $stdin.gets.chomp
if calculator == 'b'
  $stdout.puts "Basic..."
  $stdout.flush

  $stdout.puts "Enter value 1"
  $stdout.flush

  $stdout.puts "please choose: + - * /"
  $stdout.flush
  basic_function = $stdin.gets.chomp

  # case 
  # when basic_function == +

elsif calculator == 'a'
  $stdout.puts "Advanced..."
  $stdout.flush
else
  $stdout.puts "Invalid entry!"
  $stdout.flush
end
