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
			expect(calculator.subtract(1.0,1.1)).to eq(-0.1)
		end

		it "subtract two negative integers" do
			expect(calculator.subtract(-1,-1)).to eq(0)
		end

		it "subtract two negative flaot numbers" do
			expect(calculator.subtract(-1.0,-1.1)).to eq(0.1)
		end
	end
end
