class Integer
  class NegativeIntegerError < StandardError; end

  def digits
    self.to_s.length
  end

  def crossfoot
    raise NegativeIntegerError if self < 0

    result = 0
    self.to_s.chars.each do |char|
      result += char.to_i
    end
    result
  end
end
