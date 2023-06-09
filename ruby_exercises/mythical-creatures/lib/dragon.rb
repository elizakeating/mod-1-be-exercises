class Dragon

attr_reader :name, :rider, :color, :hungry, :counter

    def initialize(name, color, rider)
        @name = name
        @rider = rider
        @color = color
        @hungry = true
        @counter = 0
    end

    def hungry?
        hungry
    end

    def eat
        @counter += 1

        if @counter < 3
            @hungry = true
        elsif @counter == 3
            @hungry = false
        end

    end

end