# frozen_string_literal: true

require_relative "test_helper"

module SyntaxTree
  class LocationTest < Minitest::Test
    def test_lines
      location = Location.fixed(line: 1, char: 0, column: 0)
      location = location.to(Location.fixed(line: 3, char: 3, column: 3))

      assert_equal(1..3, location.lines)
    end

    def test_deconstruct
      location = Location.fixed(line: 1, char: 0, column: 0)

      case; when ((__m__ = location)) && false
      when (((start_line,) = nil) || (__m__.respond_to?(:deconstruct) && (((__m_arr__ = __m__.deconstruct) || true) && (Array === __m_arr__ || Kernel.raise(TypeError, "#deconstruct must return Array"))) && (((start_line = __m_arr__[0]) || true) && ((0 === __m_arr__[1]) && ((0 === __m_arr__[2]) && __m_arr__[3..-1])))))
        assert_equal(1, start_line); else; Kernel.raise(NoMatchingPatternError, __m__.inspect)
      end
    end

    def test_deconstruct_keys
      location = Location.fixed(line: 1, char: 0, column: 0)

      case; when ((__m__ = location)) && false
      when (((start_line,) = nil) || (__m__.respond_to?(:deconstruct_keys) && (((__m_hash__ = __m__.deconstruct_keys([:start_line])) || true) && (Hash === __m_hash__ || Kernel.raise(TypeError, "#deconstruct_keys must return Hash"))) && (__m_hash__.key?(:start_line) && ((start_line = __m_hash__[:start_line]) || true))))
        assert_equal(1, start_line); else; Kernel.raise(NoMatchingPatternError, __m__.inspect)
      end
    end
  end
end
