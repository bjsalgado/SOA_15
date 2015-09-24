## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game
def fizzbuzz(size, &block)
  arr=[]  
  1.upto size do |number|
    case
    when number % 3 == 0 && number % 5 == 0
      arr << "FizzBuzz"
    when number % 3 == 0
      arr << "Fizz"
    when number % 5 == 0
      arr << "Buzz"
    else
      arr << number
    end
  end
  if block
    arr.each { |a| yield a}
  else
    arr
  end
end
