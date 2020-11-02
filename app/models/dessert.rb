class Dessert

    attr_accessor :name
    attr_reader :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def create_joiner(ingredient)
        DessertJoiner.new(self, ingredient)
    end

    def ingredients
        #should return an array of `Ingredient` objects for the dessert
        DessertJoiner.all.select {|ingredient| ingredient.dessert == self}
    end

    def bakery
        #should return the `Bakery` object for the dessert
        @bakery
    end

    def calories
        # #should return a float totaling all the calories for all the ingredients included in that dessert
        # count = 0
        # DessertJoiner.all.map do |ing| 
        #     if ing.dessert == self
        #         count += ing.calories
        #     end
        # end
        # count
        DessertJoiner.all.map {|dj| dj.ingredient.calories}.sum
    end




end