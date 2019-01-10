require "test_helper"

class WordGenerator::CombinatorTest < Minitest::Test
  def test_should_raise_exception_on_invalid_number
    assert_raises RuntimeError do
      WordGenerator::Combinator.new(8275340747).generate
    end
  end

  def test_should_generate_valid_combinations
    assert_equal(
      WordGenerator::Combinator.new(6686787825).generate,
      [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
    )
  end
end
