require "test_helper"

class WordGenerator::CombinatorTest < Minitest::Test
  def setup
    @combinator = WordGenerator::Combinator.new(6686787825)
  end

  def test_should_generate_valid_combinations
    assert_equal(
      @combinator.generate,
      [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
    )
  end


  def test_that_dictionary_is_loaded
    assert @combinator.send(:dictionary).any?
  end

  def test_that_dictionary_must_be_a_hash
    assert @combinator.send(:dictionary).is_a?(Hash)
  end
end
