class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
      numbers = numbers.gsub(delimiter, ",")
    end

    return numbers.to_i if !numbers.include?(",") && !numbers.include?("\n")

    number_list = numbers.split(/,|\n/).map(&:to_i)

    negatives = number_list.select { |num| num < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    number_list.sum
  end
end
