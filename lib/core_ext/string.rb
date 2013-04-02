class String

  def lettercode
    char = self.chars.first.upcase
    code = char.ord-64
    code.between?(1, 26) ? code : 0
  end

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

  def caesar(rot=3)
    result = ""
    self.chars.each do |char|
      char.upcase!
      if char.between? "A", "Z"
        code0 = char.ord-65
        code0 = (code0 + rot) % 26
        result += (code0+65).chr
      else
        result += char
      end
    end
    result
  end
end
