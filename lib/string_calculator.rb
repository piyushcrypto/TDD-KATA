class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
      numbers = numbers.gsub(delimiter, ",")
    end
    return numbers.to_i if !numbers.include?(",") && !numbers.include?("\n")
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
