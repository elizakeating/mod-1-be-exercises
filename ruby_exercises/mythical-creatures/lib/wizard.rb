class Wizard

attr_reader :name, :bearded, :rested, :casts

    def initialize(name, bearded = true)
        @name = name
        @bearded = bearded
        @rested = true
        @casts = 0
    end

    def bearded?
        bearded == true ? true : false
    end

    def incantation(string)
        "sudo #{string}"
    end

    def rested?
        @casts < 3 ? true : false
    end

    def cast(string)
        @casts += 1
        string
    end

end
