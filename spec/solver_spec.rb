require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'when factorial method is called' do
    it 'calculate factorial number' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(5)).to eq(120)
    end
  end

  context 'when the number is negative' do
    it 'raise error for negative' do
      expect { @solver.factorial(-1) }.to raise_error('Number should not be negative')
    end
  end

  context 'when the reverse method is called' do
    it 'should return the reversed version of the string' do
      expect(@solver.reverse('hello')).to eql('olleh')
    end
  end

  context 'when the fizzbuzz method is called' do
    it 'should return FizzBuzz if the number is divisible by 3 and 5' do
      num = 15
      expect(@solver.fizzbuzz(num)).to eql(%w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz])
    end

    it 'should return Fizz if the number is only divisible by 3' do
      num = 4
      expect(@solver.fizzbuzz(num)).to eql(%w[1 2 Fizz 4])
    end

    it 'should return Buzz if the number is only divisible by 5' do
      num = 5
      expect(@solver.fizzbuzz(num)).to eql(%w[1 2 Fizz 4 Buzz])
    end

    it 'should convert the numbers into strings if they aren\'t divisible by 3 or 5' do
      num = 2
      expect(@solver.fizzbuzz(num)).to eql(%w[1 2])
    end
  end
end
