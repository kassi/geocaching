require 'minitest/autorun'
require 'test_helper'

module CoreExtTests
  module ArrayTests
    class ISumTest < Minitest::Test
      def test_sum_up_all_integers_in_an_array
        assert_equal 77, [10,20,30,17].isum
      end

      def test_sum_up_all_integers_in_an_array_with_mixed_content
        assert_equal 77, [10,20,30,'a',17].isum
      end
    end
  end
end
