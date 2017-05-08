
ONE = 'I'
FIVE = 'V'
TEN = 'X'

class RomanNumbers

    def roman(integer=nil)
        integer ||= @integer
        case integer
        when 1, 2, 3
            return (ONE * integer)
        when 4
            return (ONE + FIVE)
        when 5
            return (FIVE)
        end
    end
end

# save        return (FIVE)
        end
    end
end
nd
nd
end
end
