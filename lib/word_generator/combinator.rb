module WordGenerator
  class Combinator
    include WordGenerator
    attr_reader :number

    def initialize(number)
      @number = number
      raise '#{number} is invalid, Please re-enter 10 digit number without 0 & 1 inclusion' unless valid?(@number)
    end

    # Generate possible combination from dictionary
    def generate
      digits = number.to_i.digits.reverse
      characters = digits.map { |digit| letters[digit] }
      possible_combinations = {}

      # Start loop from 3 to 7 to avoid less than 3
      (WORD_MIN_LENGTH..(WORD_MAX_LENGTH - WORD_MIN_LENGTH)).each do |length|
        first_word = characters[0..(length-1)]
        second_word = characters[length..-1]

        first_word = first_word.shift.product(*first_word).map(&:join)
        second_word = second_word.shift.product(*second_word).map(&:join)
        possible_combinations[length] = [(first_word & dictionary[length]), (second_word & dictionary[WORD_MAX_LENGTH - length])]
      end

      possible_combinations.flat_map do |_, combinataions|
        combinataions.first.product(combinataions.last).map do |combo_words|
          combo_words
        end
      end
    end
  end
end
