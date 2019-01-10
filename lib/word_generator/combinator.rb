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

      # Start loop from 3 to 7 to avoid less than 3
      possible_combinations = (WORD_MIN_LENGTH..(WORD_MAX_LENGTH - WORD_MIN_LENGTH)).flat_map do |length|
        # Split characters in first and second combination based on start and end input
        first_combination = characters[0..(length-1)]
        second_combination = characters[length..-1]

        # take first tuple and generate combination against array
        first_combination = first_combination.shift.product(*first_combination).map(&:join)
        second_combination = second_combination.shift.product(*second_combination).map(&:join)

        # Get matching from dictionary
        first_combination = first_combination & dictionary[length]
        second_combination = second_combination & dictionary[WORD_MAX_LENGTH - length]

        # Combine Array
        first_combination.product(second_combination).map { |word| word }
      end
      # Find for complete 10 character word
      complete_word = characters.shift.product(*characters).map(&:join) & dictionary[WORD_MAX_LENGTH]
      possible_combinations << complete_word if complete_word.any?

      possible_combinations
    end
  end
end
