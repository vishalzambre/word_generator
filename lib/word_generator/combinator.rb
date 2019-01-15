module WordGenerator
  class Combinator
    attr_reader :number

    def initialize(number)
      @number = number
    end

    # Generate possible combination from dictionary
    def generate
      split_digits.flat_map do |array_of_digits|
        words = array_of_digits.map do |array_of_digit|
          characters = array_of_digit.map { |digit| letters[digit] }
          word = characters.shift.product(*characters).map(&:join)
          word = word & dictionary[array_of_digit.length]
        end
        words.shift.product(*words).map { |word| word }
      end.uniq
    end

    private

    def split_digits
      digits = number.to_i.digits.reverse

      words = ((WORD_MIN_LENGTH - 1)..(WORD_MAX_LENGTH - WORD_MIN_LENGTH - 1)).flat_map do |length|
        words = []
        token_start = 0
        token_end = length
        words << [digits[token_start..token_end], digits[(token_end + 1)..WORD_MAX_LENGTH]]
        word = []
        begin
          word << digits[token_start..token_end]
          token_start = token_end + 1
          if (digits[token_start..WORD_MAX_LENGTH].to_a.length / WORD_MIN_LENGTH) <= 1
            token_end = WORD_MAX_LENGTH
          else
            token_end += WORD_MIN_LENGTH
          end
        end while token_start < WORD_MAX_LENGTH
        words << word
        words
      end
      words << [digits]
      words.uniq
    end

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
  end
end
