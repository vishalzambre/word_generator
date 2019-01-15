require "test_helper"

class WordGenerator::NumberToWordTest < Minitest::Test
  def test_should_read_valid_combinations
    number_to_word = WordGenerator::NumberToWord.new
    assert_equal(
      number_to_word.combinations(6686787825),
      [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
    )
  end

  def test_should_raise_exception_on_invalid_number
    number_to_word = WordGenerator::NumberToWord.new
    assert_raises RuntimeError do
      number_to_word.combinations(8275340747)
    end
  end
end
