require "test_helper"

class WordGeneratorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::WordGenerator::VERSION
  end
end
