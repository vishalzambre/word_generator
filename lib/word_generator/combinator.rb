module WordGenerator
  class Combinator
    WORD_MIN_LENGTH = 3.freeze
    WORD_MAX_LENGTH = 10.freeze

    attr_reader :number

    def initialize(number)
      @number = number
      raise "#{number} is invalid, It accepts max #{WORD_MAX_LENGTH} digit number without 0 & 1 inclusion" unless valid?
    end

    # Generate possible combination from dictionary
    # @returns [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
    def generate
      # Based on possible combination of numbers from array we mapped it to actual characters  set.
      split_digits.flat_map do |array_of_digits|

        # Here we search possible words from dictionary based on number array.
        # ex it return  [["mot", "not", "oot"], ["opt", "ort"], ["puck", "ruck", "suck"]] for number array
        # [[6, 6, 8], [6, 7, 8], [7, 8, 2, 5]]

        words = array_of_digits.map do |array_of_digit|
          # We pick each number combination and mapped to characters set.
          characters = array_of_digit.map { |digit| letters[digit] }

          # Based on characters set we create combination of words
          word = characters.shift.product(*characters).map(&:join)

          # Get matching words from dictionary based combinations
          word = word & dictionary[array_of_digit.length]
        end
        # Here we combine above exampled array to one possible solution
        # [["mot", "opt", "puck"],
        # ["mot", "opt", "ruck"],
        # ["mot", "opt", "suck"],
        # ["mot", "ort", "puck"],
        # ["mot", "ort", "ruck"],
        # ["mot", "ort", "suck"],
        # ["not", "opt", "puck"],
        # ["not", "opt", "ruck"],
        # ["not", "opt", "suck"],
        # ["not", "ort", "puck"],
        # ["not", "ort", "ruck"],
        # ["not", "ort", "suck"],
        # ["oot", "opt", "puck"],
        # ["oot", "opt", "ruck"],
        # ["oot", "opt", "suck"],
        # ["oot", "ort", "puck"],
        # ["oot", "ort", "ruck"],
        # ["oot", "ort", "suck"]]

        words.shift.product(*words).map { |word| word }
      end.uniq
    end

    private

    # It return possible combination of numbers before creating words, based on min and max limit of words
    # For ex. @returns
      # [[[6, 6, 8], [6, 7, 8, 7, 8, 2, 5]],
      # [[6, 6, 8], [6, 7, 8], [7, 8, 2, 5]],
      # [[6, 6, 8, 6], [7, 8, 7, 8, 2, 5]],
      # [[6, 6, 8, 6], [7, 8, 7], [8, 2, 5]],
      # [[6, 6, 8, 6, 7], [8, 7, 8, 2, 5]],
      # [[6, 6, 8, 6, 7, 8], [7, 8, 2, 5]],
      # [[6, 6, 8, 6, 7, 8, 7], [8, 2, 5]],
      # [[6, 6, 8, 6, 7, 8, 7, 8, 2, 5]]]
    #
    def split_digits
      digits = number.to_i.digits.reverse

      words = ((WORD_MIN_LENGTH - 1)..(WORD_MAX_LENGTH - WORD_MIN_LENGTH - 1)).flat_map do |length|
        words = []
        token_start = 0
        token_end = length
        # Extract combination for 2 words based on loop iterator
        # ["onto", "struck"]
        words << [digits[token_start..token_end], digits[(token_end + 1)..WORD_MAX_LENGTH]]
        # It extracts combination based on from start to iteration and increment by min word length
        # Then it will return possible combinations like 2 words, 3 words and so on.
        word = []
        begin
          word << digits[token_start..token_end]
          token_start = token_end + 1
          if (digits[token_start..WORD_MAX_LENGTH].to_a.length / WORD_MIN_LENGTH) <= 1
            token_end = WORD_MAX_LENGTH
          else
            token_end += WORD_MIN_LENGTH
          end
        # Loop will break if token start greater than max length means no possible words remaining
        end while token_start < WORD_MAX_LENGTH
        words << word
        words
      end
      words << [digits]
      words.uniq
    end

    # It collects dictionary words and move them into hash against word length to reduce searching.
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

    # It returns set of characters against digit
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

    # It validates number length and 1 & 0 exclusion
    def valid?
      number.to_s.gsub(/0|1/, '').length == WORD_MAX_LENGTH
    end
  end
end
