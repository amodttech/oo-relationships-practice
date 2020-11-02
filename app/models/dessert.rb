class Dessert

    attr_accessor :name
    attr_reader
    attr_writer
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

end