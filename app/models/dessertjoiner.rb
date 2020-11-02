class DessertJoiner

    attr_reader :dessert, :ingredient

    @@all = []

    def initialize(dessert, ingredient)
        @dessert = dessert
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    def desserts
        Dessert.all.select {|dessert| dessert.ingredient == self}
    end

    def calories
        ingredients.map {|ing| ing.calories}
    end

end