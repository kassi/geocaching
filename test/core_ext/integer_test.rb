require 'minitest/autorun'
require 'test_helper'

module CoreExtTests
  module IntegerTests
    class LengthTest < Minitest::Test

      def test_should_calculate_length_of_1_digit_number
        assert_equal 1, 1.length
      end

      def test_should_calculate_length_of_2_digit_number
        assert_equal 2, 10.length
      end

      def test_should_calculate_length_of_negative_number
        assert_equal 3, -10.length
      end
    end

    class CrossfootTest < Minitest::Test

      def test_should_calculate_crossfoot_of_1_digit_number
        assert_equal 5, 5.crossfoot
      end

      def test_should_calculate_crossfoot_of_2_digit_number
        assert_equal 6, 15.crossfoot
      end

      def test_should_calculate_2_digit_crossfoot
        assert_equal 13, 94.crossfoot
      end

      def test_should_raise_Exception_if_number_is_negative
        assert_raises ::Integer::NegativeIntegerError do
          -1.crossfoot
        end
      end
    end

    class IteratedCrossfootTest < Minitest::Test

      def test_should_calculate_iterated_crossfoot_of_1_digit_number
        assert_equal 5, 5.iterated_crossfoot
      end

      def test_should_iterate_on_2_digit_crossfoot
        assert_equal 4, 94.iterated_crossfoot
      end
    end

    class To1A2BTest < Minitest::Test
      def test_should_convert_integer_to_letter
        assert_equal "A", 1.to_1a2b
        assert_equal "Z", 26.to_1a2b
      end

      def test_should_convert_integers_out_of_range_to_space
        assert_equal " ", 27.to_1a2b
      end
    end
  end
end
