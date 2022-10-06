require_relative '../solver.rb'

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
end