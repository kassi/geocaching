require 'test_helper'

module CoreExt
  module Integer

    class DigitsTest < Test::Unit::TestCase

      test 'should calculate length of 1 digit number' do
        assert_equal 1, 1.digits
      end

      test 'should calculate length of 2 digit number' do
        assert_equal 2, 10.digits
      end

      test 'should calculate length of negative number' do
        assert_equal 3, -10.digits
      end
    end

    class CrossfootTest < Test::Unit::TestCase

      test 'should calculate crossfoot of 1 digit number' do
        assert_equal 5, 5.crossfoot
      end

      test 'should calculate crossfoot of 2 digit number' do
        assert_equal 6, 15.crossfoot
      end

      test 'should calculate 2 digit crossfoot' do
        assert_equal 13, 94.crossfoot
      end

      test 'should raise Exception if number is negative' do
        assert_raise ::Integer::NegativeIntegerError do
          -1.crossfoot
        end
      end
    end

    class IteratedCrossfootTest < Test::Unit::TestCase

      test 'should calculate iterated crossfoot of 1 digit number' do
        assert_equal 5, 5.iterated_crossfoot
      end

      test 'should iterate on 2 digit crossfoot' do
        assert_equal 4, 94.iterated_crossfoot
      end
    end

    class To1A2BTest < Test::Unit::TestCase
      test 'should convert integer to letter' do
        assert_equal "A", 1.to_1a2b
        assert_equal "Z", 26.to_1a2b
      end

      test 'should convert integers out of range to space' do
        assert_equal " ", 27.to_1a2b
      end
    end
  end
end
