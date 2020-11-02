class Ingredient

    attr_accessor :name, :calories
    attr_reader
    attr_writer
    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

end