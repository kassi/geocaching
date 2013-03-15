require 'test_helper'

module CoreExt
  module Integer
    class DigitsTest < Test::Unit::TestCase
      test 'should calculate length of 1 digit number' do
        assert_equal 1, 1.digits
      end
      test 'should calculate length of 2 number' do
        assert_equal 2, 10.digits
      end
      test 'should calculate length of negative number' do
        assert_equal 3, -10.digits
      end
    end
  end
end
