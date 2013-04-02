require 'test_helper'

module CoreExt
  module Float

    class CrossfootTest < Test::Unit::TestCase

      test 'should calculate crossfoot of 1 digit number' do
        assert_equal 5, 5.to_f.crossfoot
      end

      test 'should calculate crossfoot of 2 digit number' do
        assert_equal 6, 15.to_f.crossfoot
      end

      test 'should calculate 2 digit crossfoot' do
        assert_equal 13, 94.to_f.crossfoot
      end

      test 'should calculate float crossfoot' do
        assert_equal 24, 94.344.to_f.crossfoot
      end

      test 'should calculate negative float crossfoot' do
        assert_equal 24, -94.344.to_f.crossfoot
      end
    end

    class IteratedCrossfootTest < Test::Unit::TestCase

      test 'should calculate iterated crossfoot of 1 digit number' do
        assert_equal 5, 5.to_f.iterated_crossfoot
      end

      test 'should iterate on 2 digit crossfoot' do
        assert_equal 4, 94.to_f.iterated_crossfoot
      end

      test 'should iterate on float crossfoot' do
        assert_equal 6, 94.344.to_f.iterated_crossfoot
      end

      test 'should iterate on negative float crossfoot' do
        assert_equal 6, -94.344.to_f.iterated_crossfoot
      end
    end
  end
end
