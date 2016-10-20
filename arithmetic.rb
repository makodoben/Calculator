# The four fundamental operations of arithmetic program in Ruby
class String
  def numeric?
    return true if self =~ /\A\d+\Z/
    true if Float(self) rescue false
  end
end  

class PrintTemplate
  def print_infomation(str)
    puts str
    num = gets.chomp
    
    # Check input number
    until num.numeric? do
        puts "\nTry again!\n" + str
        num = gets.chomp  
    end      

    return num.to_i
  end
end  

class Operate
  def calculate(op, num1, num2)
    case op
    when 1
      puts "#{num1} + #{num2} = #{num1 + num2}"
    when 2
      puts "#{num1} - #{num2} = #{num1 - num2}"
    when 3
      puts "#{num1} * #{num2} = #{num1 * num2}"
    when 4  
      puts "#{num1} / #{num2} = #{num1 / num2}"
    end  
  end  
end  

first  = PrintTemplate.new
string = 'Please input first valid decimal No.'
num1   = first.print_infomation(string)

begin
  puts 'Please input arithmetic operators No.'
  puts '1.) add 2.) substract 3.) multiply 4.) divide'
  operator = gets.chomp.to_i
end until [1,2,3,4].include?(operator)


second = PrintTemplate.new
string = 'Please input second valid decimal No.'
num2   = second.print_infomation(string)

result = Operate.new
puts "\nResult: "
result.calculate(operator, num1, num2)


