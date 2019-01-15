require "word_generator/combinator"

module WordGenerator
  class NumberToWord
    attr_accessor :number

    def combinations(mobile_number)
      @number = mobile_number || read
      validate_number
      @_combinations ||= Hash.new do |h, key|
        h[key] = combinator.generate
      end
      @_combinations[number]
    end

    private

    def read
      print 'Enter 10 digit Mobile Number : '
      @number = gets.chomp.to_i
      validate_number
    end

    def combinator
      Combinator.new(number)
    end

    def validate_number
      raise '#{number} is invalid, Please re-enter 10 digit number without 0 & 1 inclusion' unless valid?
    end

    def valid?
      number.to_s.gsub(/0|1/, '').length == WORD_MAX_LENGTH
    end
  end
end
