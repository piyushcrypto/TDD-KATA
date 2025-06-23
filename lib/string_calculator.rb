class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if !numbers.include?(",") && !numbers.include?("\n")
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
