require 'string_calculator'
RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new}

  describe "#add" do
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself when one number is provided' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers when two numbers are provided' do
      expect(calculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of multiple numbers when multiple numbers are provided' do
      expect(calculator.add("1,2,3,4,5,6")).to eq(21)
    end

    it 'handles newlines between numbers' do
      expect(calculator.add("1\n2,3,4")).to eq(10)
    end

    it 'supports custom delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an exception when negative numbers are provided" do
      expect { calculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
    end
    
  end
end