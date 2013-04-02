require 'test_helper'

module CoreExt
  module String

    class LetterCodeTest < Test::Unit::TestCase

      test 'should return 1 for A' do
        assert_equal 1, "A".lettercode
      end

      test 'should return 2 for B' do
        assert_equal 2, "B".lettercode
      end

      test 'should return 3 for C' do
        assert_equal 3, "C".lettercode
      end

      test 'should return 26 for Z' do
        assert_equal 26, "Z".lettercode
      end

      test 'should return 26 for z' do
        assert_equal 26, "z".lettercode
      end

      test 'should return 0 for any non letter' do
        assert_equal 0, "3".lettercode
      end
    end

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

    class CrossfootTest < Test::Unit::TestCase

      test 'should calculate crossfoot of 1 digit number' do
        assert_equal 5, "5".crossfoot
      end

      test 'should calculate crossfoot of 2 digit number' do
        assert_equal 6, "15".crossfoot
      end

      test 'should calculate 2 digit crossfoot' do
        assert_equal 13, "94".crossfoot
      end

      test 'should calculate float crossfoot' do
        assert_equal 24, "94.344".crossfoot
      end

      test 'should calculate negative float crossfoot' do
        assert_equal 24, "-94.344".crossfoot
      end

      test 'should calculate crossfoot of coords' do
        assert_equal 59, "N 53 12.345 E 010 56.789".crossfoot
      end
    end

    class IteratedCrossfootTest < Test::Unit::TestCase

      test 'should calculate iterated crossfoot of 1 digit number' do
        assert_equal 5, "5".iterated_crossfoot
      end

      test 'should iterate on 2 digit crossfoot' do
        assert_equal 4, "94".iterated_crossfoot
      end

      test 'should iterate on float crossfoot' do
        assert_equal 6, "94.344".iterated_crossfoot
      end

      test 'should iterate on negative float crossfoot' do
        assert_equal 6, "-94.344".iterated_crossfoot
      end

      test 'should iterate on coords crossfoot' do
        assert_equal 5, "N 53 12.345 E 010 56.789".iterated_crossfoot
      end
    end
  end
end

