class Array
  def sum
    result = 0
    self.each do |i|
      result += i if i.is_a?(Integer)
    end
    result
  end
end
