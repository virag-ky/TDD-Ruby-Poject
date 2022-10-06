class Solver
  def factorial(num)
    raise 'Number should not be negative' if num.negative?

    fact = 1
    if num.zero?
      puts 'Please enter a number greater than 1'
    else
      i = 1
      while i <= num
        fact *= i
        i += 1
      end
    end
    fact
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(number)
    (1..number).map do |n|
      fizz = (n % 3).zero?
      buzz = (n % 5).zero?
      if fizz && buzz
        'FizzBuzz'
      elsif buzz
        'Buzz'
      elsif fizz
        'Fizz'
      else
        n.to_s
      end
    end
  end
end
