# encoding: utf-8
require 'minitest/autorun'
require 'test_helper'

module CoreExtTests
  module StringTests
    class LettersTest < Minitest::Test
      def test_should_return_exactly_the_letters_of_a_string
        assert_equal %w(H a l l o I m t h e t e s t s t r i n g a n d I c o n t a i n n u m b e r t h e u m l a u t s ä ö ü Ä Ö Ü a n d ç É é ñ a n d ß a n d s o m e s i g n s),
          "Hallo!\nI'm the test-string and I contain 1 number, the umlauts äöüÄÖÜ and çÉéñ and ß and some signs: (%&$_)".letters
      end
    end

    class UpcaseLettersTest < Minitest::Test
      def test_should_return_exactly_the_upper_cased_letters_of_a_string
        assert_equal %w(H I I Ä Ö Ü É),
          "Hallo!\nI'm the test-string and I contain 1 number, the umlauts äöüÄÖÜ and çÉéñ and ß and some signs: (%&$_)".upcased_letters
      end
    end

    class LettersTest < Minitest::Test
      def test_should_return_exactly_the_lower_cased_letters_of_a_string
        assert_equal %w(a l l o m t h e t e s t s t r i n g a n d c o n t a i n n u m b e r t h e u m l a u t s ä ö ü a n d ç é ñ a n d ß a n d s o m e s i g n s),
          "Hallo!\nI'm the test-string and I contain 1 number, the umlauts äöüÄÖÜ and çÉéñ and ß and some signs: (%&$_)".downcased_letters
      end
    end

    class DigitsTest < Minitest::Test
      def test_should_return_exactly_the_digits_chars_of_a_string
        assert_equal %w(5 9 4 8 3 5 4 0 1 0 6 8 7 6),
          "N 59° 48.354' E 010° 6.876'".digits
      end
    end

    class LetterCodeTest < Minitest::Test

      def test_should_return_1_for_A
        assert_equal 1, "A".lettercode
      end

      def test_should_return_2_for_B
        assert_equal 2, "B".lettercode
      end

      def test_should_return_3_for_C
        assert_equal 3, "C".lettercode
      end

      def test_should_return_26_for_Z
        assert_equal 26, "Z".lettercode
      end

      def test_should_return_26_for_z
        assert_equal 26, "z".lettercode
      end

      def test_should_return_0_for_any_non_letter
        assert_equal 0, "3".lettercode
      end
    end

    class ToA1B2Test < Minitest::Test

      def test_should_convert_text_to_array_of_letter_codes
        assert_equal [20,5,19,20], "TEST".to_a1b2
      end

      def test_should_treat_lower_case_letters_like_upper_case_letters
        assert_equal [20,5,19,20], "Test".to_a1b2
      end

      def test_should_keep_non_character_letters
        assert_equal [20,5,19,20," ",9,20], "TEST IT".to_a1b2
      end
    end

    class CaesarTest < Minitest::Test

      def test_should_rotate_all_characters_about_3
        assert_equal "DEFGH", "ABCDE".caesar
      end

      def test_should_rotate_around_the_border
        assert_equal "YZABC", "VWXYZ".caesar
      end

      def test_should_not_change_non_characters
        assert_equal "DEF 1 GH", "ABC 1 DE".caesar
      end

      def test_should_treat_lower_case_letters_like_upper_case_letters
        assert_equal "DEF 1 GH", "Abc 1 De".caesar
      end

      def test_should_get_step_size_as_optional_parameter
        assert_equal "EFGHI", "ABCDE".caesar(4)
      end

      def test_should_allow_negative_step_size
        assert_equal "YZABC", "ABCDE".caesar(-2)
      end
    end

    class CrossfootTest < Minitest::Test

      def test_should_calculate_crossfoot_of_1_digit_number
        assert_equal 5, "5".crossfoot
      end

      def test_should_calculate_crossfoot_of_2_digit_number
        assert_equal 6, "15".crossfoot
      end

      def test_should_calculate_2_digit_crossfoot
        assert_equal 13, "94".crossfoot
      end

      def test_should_calculate_float_crossfoot
        assert_equal 24, "94.344".crossfoot
      end

      def test_should_calculate_negative_float_crossfoot
        assert_equal 24, "-94.344".crossfoot
      end

      def test_should_calculate_crossfoot_of_coords
        assert_equal 78, "N 53 12.345 E 010 56.789".crossfoot
      end

      def test_should_calculate_crossfoot_of_coords_digits
        assert_equal 59, "N 53 12.345 E 010 56.789".digits.join.crossfoot
      end
    end

    class IteratedCrossfootTest < Minitest::Test

      def test_should_calculate_iterated_crossfoot_of_1_digit_number
        assert_equal 5, "5".iterated_crossfoot
      end

      def test_should_iterate_on_2_digit_crossfoot
        assert_equal 4, "94".iterated_crossfoot
      end

      def test_should_iterate_on_float_crossfoot
        assert_equal 6, "94.344".iterated_crossfoot
      end

      def test_should_iterate_on_negative_float_crossfoot
        assert_equal 6, "-94.344".iterated_crossfoot
      end

      def test_should_iterate_on_coords_crossfoot
        assert_equal 6, "N 53 12.345 E 010 56.789".iterated_crossfoot
      end

      def test_should_iterate_on_coords_digits_crossfoot
        assert_equal 5, "N 53 12.345 E 010 56.789".digits.join.iterated_crossfoot
      end
    end
  end
end
