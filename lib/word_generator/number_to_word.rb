require "word_generator/combinator"

module WordGenerator
  class NumberToWord
    include WordGenerator

    attr_reader :number

    def combinatons
      @_combinatons = combinator.generate
    end

    private

    def read
      print 'Enter 10 digit Mobile Number : '
      loop do
        @number = gets.chomp.to_i
        break if valid?(number)
        print "#{number} is invalid, Please re-enter 10 digit number without 0 & 1 inclusion : "
      end
    end

    def combinator
      read unless number
      Combinator.new(number)
    end
  end
end
