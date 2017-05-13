class RomanNumbers
    def initialize()
        puts 'Welcome to Roman Numbers!'
    end

    def to_arabic(number)
        case number
        when 'I', 'II', 'III'
            return len(number)
        when 'IV'
            return 4
        when 'V'
            return 5
        when 'VI', 'VII', 'VIII'
            return len(number) + 4
        when 'X'
            return 10
        else
            raise "Unsupported Roman Number: #{number}"
        end
    end
end
