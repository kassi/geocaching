require 'minitest/autorun'
require 'test_helper'

module CoreExtTests
  module FloatTests
    class CrossfootTest < Minitest::Test

      def test_should_calculate_crossfoot_of_1_digit_number
        assert_equal 5, 5.to_f.crossfoot
      end

      def test_should_calculate_crossfoot_of_2_digit_number
        assert_equal 6, 15.to_f.crossfoot
      end

      def test_should_calculate_2_digit_crossfoot
        assert_equal 13, 94.to_f.crossfoot
      end

      def test_should_calculate_float_crossfoot
        assert_equal 24, 94.344.to_f.crossfoot
      end

      def test_should_calculate_negative_float_crossfoot
        assert_equal 24, -94.344.to_f.crossfoot
      end
    end

    class IteratedCrossfootTest < Minitest::Test

      def test_should_calculate_iterated_crossfoot_of_1_digit_number
        assert_equal 5, 5.to_f.iterated_crossfoot
      end

      def test_should_iterate_on_2_digit_crossfoot
        assert_equal 4, 94.to_f.iterated_crossfoot
      end

      def test_should_iterate_on_float_crossfoot
        assert_equal 6, 94.344.to_f.iterated_crossfoot
      end

      def test_should_iterate_on_negative_float_crossfoot
        assert_equal 6, -94.344.to_f.iterated_crossfoot
      end
    end
  end
end
