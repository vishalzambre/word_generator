require "test_helper"

class WordGeneratorTest < Minitest::Test
  def setup
    @word_generator = Object.new
    @word_generator.extend(WordGenerator)
  end

  def test_that_it_has_a_version_number
    refute_nil ::WordGenerator::VERSION
  end

  def test_that_dictionary_is_loaded
    assert @word_generator.dictionary.any?
  end
end
