class Solver
  def factorial(num)
    raise 'Number should not be negative' if num.negative?

    fact = 1
    if(num == 0)
      puts 'Please enter a number greater than 1'
    else
      i = 1
      while i <= num
        fact = fact * i
        i += 1
      end
    end
    puts "Factorial of #{num} is #{fact}"
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(number)
    (1..number).map do |n|
      fizz = (n % 3 == 0)
      buzz = (n % 5 == 0)
      if fizz && buzz
        puts "FizzBuzz"
      elsif buzz
        puts "Buzz"
      else
        puts n
      end
    end
  end
end
