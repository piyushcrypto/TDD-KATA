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
  end
end