require 'test_helper'

module CoreExt
  class ArrayTest < Test::Unit::TestCase
    test 'should sum up all integers in an array' do
      assert_equal 77, [10,20,30,17].sum
    end
  end
end
