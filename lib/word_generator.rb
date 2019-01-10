require "word_generator/version"
require "word_generator/combinator"
require "word_generator/number_to_word"

module WordGenerator
  class Error < StandardError; end

  WORD_MIN_LENGTH = 3.freeze
  WORD_MAX_LENGTH = 10.freeze

  def dictionary
    @_dictionary ||= begin
      _dictionary = {}
        File.foreach("./lib/word_generator/dictionary_lookup/dictionary.txt") do |word|
          word = word.chop.to_s.downcase
          _dictionary[word.length] ||= []
          _dictionary[word.length] << word
        end
      _dictionary
    end
  end

  def letters
    {
      2 => ['a', 'b', 'c'],
      3 => ['d', 'e', 'f'],
      4 => ['g', 'h', 'i'],
      5 => ['j', 'k', 'l'],
      6 => ['m', 'n', 'o'],
      7 => ['p', 'q', 'r', 's'],
      8 => ['t', 'u', 'v'],
      9 => ['w', 'x', 'y', 'z'],
    }.freeze
  end

  def valid?(_number)
    _number.to_s.gsub(/0|1/, '').length == WORD_MAX_LENGTH
  end
end
