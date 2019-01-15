require "word_generator/version"
require "word_generator/combinator"
require "word_generator/number_to_word"

module WordGenerator
  class Error < StandardError; end

  WORD_MIN_LENGTH = 3.freeze
  WORD_MAX_LENGTH = 10.freeze
end
