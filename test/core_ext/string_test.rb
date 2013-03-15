require 'test_helper'

module CoreExt
  module String

    class ToA1B2Test < Test::Unit::TestCase

      test 'should convert text to array of letter codes' do
        assert_equal [20,5,19,20], "TEST".to_a1b2
      end

      test 'should treat lower case letters like upper case letters' do
        assert_equal [20,5,19,20], "Test".to_a1b2
      end

      test 'should keep non character letters' do
        assert_equal [20,5,19,20," ",9,20], "TEST IT".to_a1b2
      end
    end

    class CaesarTest < Test::Unit::TestCase

      test 'should rotate all characters about 3' do
        assert_equal "DEFGH", "ABCDE".caesar
      end

      test 'should rotate around the border' do
        assert_equal "YZABC", "VWXYZ".caesar
      end

      test 'should not change non characters' do
        assert_equal "DEF 1 GH", "ABC 1 DE".caesar
      end

      test 'should treat lower case letters like upper case letters' do
        assert_equal "DEF 1 GH", "Abc 1 De".caesar
      end

      test 'should get step size as optional parameter' do
        assert_equal "EFGHI", "ABCDE".caesar(4)
      end

      test 'should allow negative step size' do
        assert_equal "YZABC", "ABCDE".caesar(-2)
      end
    end
  end
end

