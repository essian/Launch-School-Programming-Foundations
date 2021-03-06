# manages octal numbers
class Octal
  attr_reader :num_str
  def initialize(num_str)
    @num_str = num_str
  end

  def to_decimal
    return 0 if num_str.chars.any? { |digit| digit.to_i > 7 }
    num = num_str.to_i
    total = 0
    num_str.size.times do |n|
      num, remainder = num.divmod(10)
      total += remainder * 8**n
    end
    total
  end
end

# o = Octal.new('11')
# p o.to_decimal
