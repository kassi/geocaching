# encoding: utf-8
# require "unicode_utils"

class String

  def letters
    self.chars.select { |c| c =~ /\p{Word}/i && c !~ /[\d_]/ }
  end

  def upcased_letters
    self.chars.select { |c| c =~ /\p{Word}/i && c !~ /[\d_]/ && c.upcase == c }
  end

  def downcased_letters
    self.chars.select { |c| c =~ /\p{Word}/i && c !~ /[\d_]/ && c.downcase == c }
  end

  def digits
    self.chars.select { |c| c =~ /\p{Digit}/ }
  end

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

  def crossfoot
    result = 0
    self.chars.each do |char|
      result += char.to_i > 0 ? char.to_i : char.lettercode
    end
    result
  end

  def iterated_crossfoot
    result = self.crossfoot
    result = result.crossfoot while result.length > 1
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

  def bww
    self.to_a1b2.sum
  end

  def bw(n)
    self[n-1].to_a1b2[0]
  end
end
