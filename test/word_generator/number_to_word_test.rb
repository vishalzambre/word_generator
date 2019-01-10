require "test_helper"

class WordGenerator::NumberToWordTest < Minitest::Test
  def test_should_read_valid_combinations
    number_to_word = WordGenerator::NumberToWord.new
    number_to_word.number = 6686787825
    assert_equal(
      number_to_word.combinatons,
      [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
    )
  end

  def test_should_raise_exception_on_invalid_number
    number_to_word = WordGenerator::NumberToWord.new
    number_to_word.number = 8275340747
    assert_raises RuntimeError do
      number_to_word.combinatons
    end
  end
end
