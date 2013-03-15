class String

  def to_a1b2
    result = []
    self.chars.each do |char|
      char.upcase!
      if ("A".."Z").include?(char)
        result << char.ord-64
      else
        result << char
      end
    end
    result
  end
end
