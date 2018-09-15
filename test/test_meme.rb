# Usage: ruby test/test_meme.rb

require 'minitest/autorun'
require_relative '../lib/meme'

# class TestMeme
class TestMeme < Minitest::Test
  def setup
    @meme = Meme.new
  end

  def test_that_kitty_can_eat
    assert_equal 'OHAI!', @meme.i_can_has_cheezburger?
  end

  def test_that_it_will_blend
    assert_equal 'YES!', @meme.will_it_blend?
  end

  def test_that_will_be_skipped
    skip 'test this later'
  end
end
