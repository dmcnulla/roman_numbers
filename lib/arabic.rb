
ONE = 'I'
FIVE = 'V'
TEN = 'X'

class ArabicNumbers
    def initialize()
        puts 'Welcome to Roman Numbers!'
    end

    def to_roman(number)
        case number
        when 1..3
            return (ONE * number)
        when 4
            return (ONE + FIVE)
        when 5..8
            return (FIVE + (ONE * (number - 5)))
        when 9
            return (ONE + TEN)
        when 10
            return (TEN)
        else
            raise "Unsupported Arabic Number: #{number}"
        end
    end
end
