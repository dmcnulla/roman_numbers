
ONE = 'I'
FIVE = 'V'
TEN = 'X'

class RomanNumbers
    def initialize()
        puts 'Welcome to Roman Numbers!'
    end

    def roman(integer=nil)
        integer ||= @integer
        case integer
        when 1..3
            return (ONE * integer)
        when 4
            return (ONE + FIVE)
        when 5..8
            return (FIVE + (ONE * (integer - 5)))
        when 9
            return (ONE + TEN)
        when 10
            return (TEN)
        end
    else
        raise "unsupported number: #{integer}"
    end
end
