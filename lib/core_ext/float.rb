class Float
  def crossfoot
    result = 0
    self.to_s.chars.each do |char|
      result += char.to_i
    end
    result
  end

  def iterated_crossfoot
    result = self.crossfoot
    result = result.crossfoot while result.length > 1
    result
  end
end
