class Integer
  class NegativeIntegerError < StandardError; end

  def digits
    self.to_s.length
  end

  def to_1a2b
    if self >= 1 and self <= 26
      ("A".ord-1+self).chr
    else
      " "
    end
  end

  def crossfoot
    raise NegativeIntegerError if self < 0

    result = 0
    self.to_s.chars.each do |char|
      result += char.to_i
    end
    result
  end

  def iterated_crossfoot
    result = self
    result = result.crossfoot while result.digits > 1
    result
  end
end
