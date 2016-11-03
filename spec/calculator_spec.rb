require 'calculator'

describe Calculator do

  let(:calculator) { Calculator.new }
  
  describe '#add' do
    it "adds two positive integer numbers" do
      expect(calculator.add(1,1)).to eq(2)
    end

    it "adds two positive float numbers" do
      expect(calculator.add(1.0,1.1)).to eq(2.1)
    end

    it "adds two negative integers" do
      expect(calculator.add(-1,-1)).to eq(-2)
    end

    it "adds two negative flaot numbers" do
      expect(calculator.add(-1.0,-1.1)).to eq(-2.1)
    end
  end

  describe '#subtract' do
    it "subtract two positive integer numbers" do
      expect(calculator.subtract(1,1)).to eq(0)
    end

    it "subtract two positive float numbers" do
      expect(calculator.subtract(1.0,1.1)).to be_within(0.00001).of(-0.1)
    end

    it "subtract two negative integers" do
      expect(calculator.subtract(-1,-1)).to eq(0)
    end

    it "subtract two negative flaot numbers" do
      expect(calculator.subtract(-1.0,-1.1)).to be_within(0.00001).of(0.1)
    end
  end

  describe "#multiply" do
    it "multiplies two numbers" do
      expect(calculator.multiply(2,3)).to eq(6)
    end
  end

  describe "#divide" do
    it "divides two numbers" do
      expect(calculator.divide(6,2)).to eq(3)
    end

    it "raises an argument error if second argument is 0" do
      expect { calculator.divide(6,0) }.to raise_error(ArgumentError)
    end

    it "return integer if no remainder" do
      expect(calculator.divide(6.0,2.0)).to be_an(Integer)
    end

    it "returns a float if there is a remainder" do
      expect(calculator.divide(6,4)).to be_a(Float)
    end
  end

  describe "pow" do
    it "raises numbers to their power" do
      expect(calculator.pow(2,2)).to eq(4)
    end

    it "raises numbers to a negative power" do
      expect{ calculator.pow(2,-2)).to eq(0.25)
    end

    it "raises numbers to a decimal power" do
      expect(calculator.pow(4,0.5)).to eq(2)
    end
  end
end
