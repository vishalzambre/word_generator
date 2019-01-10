require "word_generator/version"
require 'csv'

module WordGenerator
  class Error < StandardError; end

  WORD_IN_LENGTH = 3.freeze
  DICTIONARY = CSV.read('./lib/word_generator/dictionary_lookup/dictionary.csv')
                    .flatten.reject {|word| word.length < WORD_IN_LENGTH }

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

  def generate_word
    numbers = 6686787825.digits.reverse
    characters = numbers.map { |digit| letters[digit] }
    characters.inject(&:product).map do |word|
      word = word.flatten.join.upcase
      DICTIONARY.map do |_word|
          word[_word]
      end.compact
    end
  end

  def gets
  end
end
