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
  end
end

