require 'minitest/autorun'
require 'colorido'

class ColoridoTest < Minitest::Test
  def setup
    @lib = Colorido.new
  end

  def test_has_many_items
    assert_equal 865, @lib.colors.size
  end

  def test_items_as_color
    @lib.colors.each do |color|
      assert_kind_of Colorido::Color, color
      assert_kind_of String, color.codename
      assert_kind_of String, color.name
      assert_kind_of String, color.hex
      assert color.hex.start_with?('#')
      assert_kind_of Colorido::RGB, color.rgb
      assert_kind_of String, color.rgb.red
      assert_kind_of String, color.rgb.green
      assert_kind_of String, color.rgb.blue
    end
  end

  def test_pick_one_at_random
    assert_includes @lib.colors, @lib.pick_random
    many_random = (0..@lib.colors.size).map { @lib.pick_random }
    is_really_random = many_random.uniq.size > 1
    assert is_really_random
  end

  def test_returns_names
    assert_equal @lib.colors.map(&:name), @lib.names
  end

  def test_returns_codenames
    assert_equal @lib.colors.map(&:codename), @lib.codenames
  end
end
